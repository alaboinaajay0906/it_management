import psycopg2
import csv
import os
import sys
import getpass
from sqlfluff import lint, fix
from colorama import init, Fore, Back, Style

init(autoreset=True)

Sql_to_get_clients = "SELECT id,customer_name,customer_details FROM public.customer_info ORDER BY id ASC ;"
sql_output_file = "dbupdates.sql"
sql_client_version = "SELECT version FROM public.version WHERE type = 'db_version';"


def validate_number(str):
    try:
        version = int(str)
        return version
    except:
        print("\033[91menter only numbers\033[0m")
        return -1


def printg(str):
    print(Fore.GREEN + str + Style.RESET_ALL)


def printr(str):
    print(Fore.RED + str + Style.RESET_ALL)


# main function
def main():
    type_of_operation = input("Enter type of operation you want to perform get/put:")

    operation_enum = 1

    if (type_of_operation == "get") or (type_of_operation == "Get") or (type_of_operation == "GET"):
        operation_enum = 1
    elif (type_of_operation == "put") or (type_of_operation == "Put") or (type_of_operation == "PUT"):
        operation_enum = 2;
    else:
        printr("Operation should be either get or put only.")
        return
        # exit()

    ip = '192.168.60.67'
    Db = "db_version_control"

    # establish the connection to master
    try:
        conn = psycopg2.connect(host=ip, port=5432, database=Db, user="postgres", password="hotandcold")
        cur = conn.cursor()
    except:
        print(Fore.RED + "Error\nUnable to connect to the database for following reasons" + Style.RESET_ALL)
        print(Fore.RED + "1.Check VPN if you are working from home(Try ping 192.168.60.67)" + Style.RESET_ALL)
        print(Fore.RED + "2.If the ping is working then Sindhu machine can be down(plz inform)" + Style.RESET_ALL)
        return

    print("Here is the list of customers for which you can get/put the scripts")
    cur.execute(Sql_to_get_clients)
    data = cur.fetchall();

    for customer in data:
        print(customer[0], customer[1], customer[2])

    customer_id = input(Fore.GREEN + "Enter the customer id:" + Style.RESET_ALL);
    customer_id = validate_number(customer_id);
    if customer_id == -1:
        return
    # Get the updates from DB
    if operation_enum == 1:
        sql = f"SELECT ci.id, person_responsible,comments,db_script,version FROM public.db_scripts as dbs inner join public.customer_info as ci on dbs.customer_id = ci.id where dbs.version >"
        print("If you don't enter any number i will try to get fetch it from your DB")
        current_version = input(Fore.GREEN + "Enter the current version number of your DB:" + Style.RESET_ALL)

        if current_version == "":
            client_ip = input("Enter Ip address of your machine:")
            client_db = input("Enter your DB name:")
            print("Username rmtest being used for connection")
            client_password = getpass.getpass('Enter the password of your data base: ')
            try:
                client_conn = psycopg2.connect(host=client_ip, port=5432, database=client_db, user="rmtest",
                                               password=client_password)
                client_cur = client_conn.cursor();
                client_cur.execute(sql_client_version);
                client_version = client_cur.fetchall();
                current_version = client_version[0][0];
                printg(f"your current version is {current_version}")
            except:
                print(Fore.RED + "Error\nUnable to fetch your db version enter manually\033[0m" + Style.RESET_ALL)
                current_version = input(Fore.GREEN + "Enter the current version number of your DB:" + Style.RESET_ALL)
        current_version = validate_number(current_version)
        if current_version == -1:
            return

        sql = sql + f"{current_version}"
        print("\nIf you don't enter any number, I will get till latest script")
        to_version = input(
            Fore.GREEN + "Enter the final version number version number till which you want to update:" + Style.RESET_ALL)
        if to_version == "":
            print("I will get the scripts till end(latest)")

        else:
            to_version = validate_number(to_version)
            if to_version == -1:
                return
            sql = sql + f" and dbs.version <={to_version} "

        sql1 = sql + f" and customer_id =1 order by dbs.version asc;"
        sql2 = sql + f" and customer_id = {customer_id} order by dbs.version asc;"
        # print(sql)

        # try:
        #     data = []
        #     if customer_id ==1:
        #         cur.execute(sql1)
        #         data = cur.fetchall()
        #     else:
        #         for query in (sql1, sql2):
        #             cur.execute(query)
        #             data.extend(cur.fetchall())  # assuming both return multiple rows

        # except Exception as e:
        #         printr("Unable to fetch the scripts")
        #         printr(str(e))  # Optional: Show actual error
        #         return
        try:
            data = []
            if customer_id == 1:
                cur.execute(sql1)
                data = cur.fetchall()
            else:
                for query in (sql1, sql2):
                    cur.execute(query)
                    data.extend(cur.fetchall())  # assuming both return multiple rows

        except Exception as e:
            # Check if it's a "no data returned" type of exception
            if hasattr(e, 'pgcode') and e.pgcode == '02000':  # 02000: no_data_found (optional handling)
                print(f"\033[92mYour database version is up to date!\033[00m")
            else:
                print("Unable to fetch the scripts")
                print(str(e))
            return

        # If no exception, check if data is empty
        if not data:
            print(f"\033[92mYour database version is up to date!\n Please wait for new db commits\033[00m")
            return

        # Write to SQL output file
        with open(f"./{sql_output_file}", "w", encoding='utf-8') as f:
            f.write("--fileStatus=0\n\n")
            for script in data:
                f.write("--Customer id = " + str(script[0]) + "\n")
                if script[1]:
                    f.write("-- " + script[1] + "\n")
                if script[2]:
                    f.write("--" + script[2] + "\n\n")
                f.write(script[3] + ";" + "\n\n")
                f.write(f"UPDATE public.version SET version = {script[4]} WHERE type = 'db_version';\n\n")

    # Put the Sql script into DB
    elif operation_enum == 2:
        print("Enter the DB script (type 'eof' on a new line to finish):")
        script = ""
        while True:
            line = input()
            if line.strip().lower() == "eof":
                break
            script += line + "\n"

        comment = input("Enter the comment for the above script: ").strip()
        name = input("Enter your name: ").strip()

        #  # DB script Syntax validation feature
        def validate_sql(script_text):

           # function thar detects the SQL issue
            issues = lint(script_text, dialect='postgres')

            # Filter only critical syntax issues (ignore style warnings like LT05)
            critical_issues = [
                issue for issue in issues
                if issue.get('code', '').startswith('PRS') or issue.get('code', '').startswith('L0')
            ]

            if critical_issues:
                print(Fore.RED + "\nSyntax Error(s):" + Style.RESET_ALL)
                for issue in critical_issues:
                    line = issue.get('start_line_no', '?')
                    col = issue.get('start_line_pos', '?')
                    code = issue.get('code', 'UNK')
                    msg = issue.get('description', 'Unknown error')
                    print(f"  [Line {line}, Col {col}] {code}: {msg}")
                return False
            else:
                print(Fore.GREEN + " SQL syntax is valid." + Style.RESET_ALL)
                return True

        if not validate_sql(script):
            print(
                Fore.RED + "The SQL script is not valid. Please check the syntax error. Aborting insertion." + Style.RESET_ALL)
            return

        #     def validate_sql(script_text, conn):
        #         try:
        #             conn.execute("BEGIN;")
        #             conn.execute(script_text)
        #             conn.execute("ROLLBACK;")
        #             return True
        #         except psycopg2.Error as e:
        #             if e.pgcode == '42601':
        #                 print(f"\nSyntax Error:\n  {e.pgerror}")
        #                 return False
        #             else:
        #                 # print(f"\nNon-syntax warning (shcema related issues..):\n  {e.pgerror}")
        #                 try:
        #                     conn.execute("ROLLBACK;")
        #                 except:
        #                     pass
        #                 return True
        #     if not validate_sql(script, cur):
        #         print(Fore.RED + "The SQL script is not valid. Please check the syntax error. Aborting insertion." + Style.RESET_ALL)
        #         return

        # insert the dbupdate if the validation is success
        try:
            insert_sql = """
                INSERT INTO public.db_scripts (db_script, customer_id, comments, person_responsible)
                VALUES (%s, %s, %s, %s);
            """
            cur.execute(insert_sql, (script, customer_id, comment, name))
            conn.commit()
            print(f"\033[92m DB Script inserted successfully.\033[00m")
        except Exception as e:
            print(" Failed to insert the query:", e)
            return

        try:
            cur.execute("""
                SELECT version FROM public.db_scripts
                WHERE person_responsible = %s
                ORDER BY version DESC
                LIMIT 1;
            """, (name,))
            inserted_data = cur.fetchone()
            if inserted_data:
                print(f"Version number of your DB update:\033[92m{inserted_data[0]}\033[00m")
                print(" Please use this in your code and commit message.")
                print(f"Thank you \033[92m{name}\033[00m! Have a good day!")
            else:
                print(" No version info found for the inserted script.")
        except Exception as e:
            print(" Unable to fetch the inserted version:", e)

    else:
        print(Fore.RED + "Operation should be either get or put only." + Style.RESET_ALL)

main()
input("Press Enter to close...")

#     elif operation_enum == 2:
#         print("Enter the DB script:")
#         script = ""
#         while True:
#             line = input()
#             if line == "eof":
#                 break
#             script += line+"\n"
#         # script = script.rstrip("\n")
#         comment = input("Enter the Comment for the above script:")
#         name = input("Enter your name:")


#         # Insert query command
#         try:
#             sql = f"INSERT INTO public.db_scripts(db_scripts, customer_id, comments, person_responsible) VALUES ($mylimiter${script}$mylimiter$, {customer_id}, '{comment}','{name}');"
#             cur.execute(sql)
#             conn.commit()
#             printg("Inserted Successfully")
#         except:
#             printr("Not able to insert the query")
#             return

#         #Get the inserted query
#         try:
#             sql = f"select version from public.db_scripts where person_responsible = '{name}' order by version desc limit 1;"
#             cur.execute(sql)
#             inserted_data = cur.fetchall()
#             printg(f"{inserted_data[0][0]} is the version number of your DB update,Plz use this in your code and commit mesg")
#         except:
#             printr("Unable to get the Inserted ID")


#     else:
#         print(Fore.RED + "Operation should be either get or put only." + Style.RESET_ALL)

# main()
# input("Enter any key to close")
