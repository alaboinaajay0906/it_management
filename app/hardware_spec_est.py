import math

def recommend_hardware(project_scope, users, high_traffic, no_of_params, poll_rate, pg_agent_job_summarisation_rate):
    no_of_cores = 4
    ram_gb = 16
    rom_gb = 100

    if project_scope == 1:
        if 1 <= no_of_params <= 100:
            no_of_cores = 4
        elif 100 <= no_of_params <= 500:
            no_of_cores = 6
        elif 501 <= no_of_params <= 2000:
            no_of_cores = 8
        elif 2000 <= no_of_params <= 5000:
            no_of_cores = 10
        elif 5001 <= no_of_params <= 10000:
            no_of_cores = 12
        elif 10001 <= no_of_params <= 15000:
            no_of_cores = 24
        elif 15001 <= no_of_params <= 20000:
            no_of_cores = 26
        elif 20001 <= no_of_params <= 25000:
            no_of_cores = 32
        elif 25001 <= no_of_params <= 30000:
            no_of_cores = 44
        elif 30001 <= no_of_params <= 50000:
            no_of_cores = 64
        elif 50001 <= no_of_params <= 100000:
            no_of_cores = 96
        elif 100001 <= no_of_params <= 150000:
            no_of_cores = 112
        else:
            return 288

        polls_in_day = (24 * 60 * 60) / poll_rate
        polls_in_day_by_pgjob = 1440 / pg_agent_job_summarisation_rate
        no_of_rows_summarises_by_pgagent_job_per_run = pg_agent_job_summarisation_rate * 60 / poll_rate

        history = 200
        history_snapshot = 300
        realtime_data = 340 * no_of_rows_summarises_by_pgagent_job_per_run

        per_day_history = float((history * polls_in_day) * 0.000000001)
        history_snapshot = float(history_snapshot * no_of_params * 0.000000001)
        per_day_realtime_data = float(realtime_data * polls_in_day_by_pgjob * 0.000000001)

        per_month_history = per_day_history * 31
        per_month_realtime_data = per_day_realtime_data * 31

        per_year_history = per_month_history * 12
        per_year_realtime_data = per_month_realtime_data * 12

        total_storage_consumption = math.ceil(
            ((per_year_history + per_year_realtime_data) * (no_of_params) + (history_snapshot)))

        rom_gb = math.ceil(total_storage_consumption / 10) * 10

    return {
        "CPU Cores": no_of_cores,
        "RAM (GB)": ram_gb,
        "ROM (GB)": rom_gb,
        "Recommended OS": "Ubuntu LTS or Windows Server 2022",
        "Network": "1 Gbps NIC",
    }
