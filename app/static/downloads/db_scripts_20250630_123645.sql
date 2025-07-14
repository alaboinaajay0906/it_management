--fileStatus=0

--Customer id = 1
-- Aniketh
--All modules, ALM

CREATE SEQUENCE maintenance_template_maintenance_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

GRANT ALL PRIVILEGES ON SEQUENCE public.maintenance_template_maintenance_template_id_seq TO rmtest;


CREATE TABLE IF NOT EXISTS public.maintenance_template
(
    maintenance_template_id bigint NOT NULL DEFAULT nextval('maintenance_template_maintenance_template_id_seq'::regclass),
    maintenance_type smallint,
    asset_types integer[],
    duration_of_activity integer,
    frequency_type smallint,
    cost_of_maintenance numeric(10),
    maintenance_activity character varying COLLATE pg_catalog."default" UNIQUE,
    maintenance_active_display character varying COLLATE pg_catalog."default",
    status_id smallint,
    create_time timestamp without time zone DEFAULT timezone('utc'::text, CURRENT_TIMESTAMP),
    CONSTRAINT maintenance_template_pkey PRIMARY KEY (maintenance_template_id)
)

--ALTER TABLE maintenance_template
--AND CONSTRAINT unique_maintenance_activity UNIQUE (maintenance_activity);

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.maintenance_template
    OWNER to rmtest;
	
	GRANT ALL PRIVILEGES ON TABLE public.maintenance_template TO rmtest;
	----------------------------------------------------------------------------------------------------------------------------------------------------
	CREATE SEQUENCE maintenance_maintenance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


GRANT ALL PRIVILEGES ON SEQUENCE public.maintenance_template_maintenance_template_id_seq TO rmtest;

CREATE TABLE IF NOT EXISTS public.maintenance
(
    maintenance_id bigint NOT NULL DEFAULT nextval('maintenance_maintenance_id_seq'::regclass),
    maintenance_template_id bigint,
    maintenance_type smallint,
    asset_id bigint,
    subsystem character varying COLLATE pg_catalog."default",
    duration_of_activity integer,
    frequency_type smallint,
    cost_of_maintenance numeric(10),
	maintenance_activity character varying COLLATE pg_catalog."default" UNIQUE,
    maintenance_activity_display character varying COLLATE pg_catalog."default",
    planned_start_date timestamp without time zone,
    user_id bigint,
    weightage smallint,
    status_id smallint,
	status smallint,
    update_time timestamp without time zone,
    remarks text   COLLATE pg_catalog."default",
    completion_date_time timestamp without time zone,
    create_time timestamp without time zone DEFAULT timezone('utc'::text, CURRENT_TIMESTAMP),
	activity_start_date  timestamp without time zone,
    CONSTRAINT maintenance_pkey PRIMARY KEY (maintenance_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.maintenance
    OWNER to rmtest;
	
	GRANT ALL PRIVILEGES ON TABLE public.maintenance TO rmtest;

	----------------------------------------------------------------------------------------------------------------------------------------------------

CREATE SEQUENCE subtask_type_subtask_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

GRANT ALL PRIVILEGES ON SEQUENCE public.subtask_type_subtask_type_id_seq TO rmtest;

CREATE TABLE IF NOT EXISTS public.subtask_template
(
    subtask_template_id bigint NOT NULL DEFAULT nextval('subtask_type_subtask_type_id_seq'::regclass),
    maintenance_template_id bigint,
    product_id bigint,
    inventory_qty bigint,
    subtask_display character varying COLLATE pg_catalog."default",
    requires_downtime smallint,
    status_id smallint,
     status smallint,
    inventory json,
    create_time timestamp without time zone DEFAULT timezone('utc'::text, CURRENT_TIMESTAMP),
    CONSTRAINT subtask_type_pkey PRIMARY KEY (subtask_template_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.subtask_template
    OWNER to rmtest;
	
	GRANT ALL PRIVILEGES ON TABLE public.subtask_template TO rmtest;

CREATE SEQUENCE subtask_subtask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

GRANT ALL PRIVILEGES ON SEQUENCE public.subtask_subtask_id_seq TO rmtest;

CREATE TABLE IF NOT EXISTS public.subtask
(
    subtask_id bigint NOT NULL DEFAULT nextval('subtask_subtask_id_seq'::regclass),
    subtask_template_id bigint,
    maintenance_id bigint,
    inventory_qty bigint,
    product_id bigint,
    requires_downtime smallint,
    subtask_display character varying COLLATE pg_catalog."default",
    status_id smallint,
    create_time timestamp without time zone DEFAULT timezone('utc'::text, CURRENT_TIMESTAMP),
	update_time timestamp without time zone ,
    status smallint,
    inventory json,
    remarks text,
    user_id int,
    CONSTRAINT subtask_pkey PRIMARY KEY (subtask_id)
)


--ALTER TABLE subtask ADD COLUMN update_time timestamp without time zone;

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.subtask
    OWNER to rmtest;
	
	GRANT ALL PRIVILEGES ON TABLE public.subtask TO rmtest;
CREATE SEQUENCE maintenance_history_maintenance_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

GRANT ALL PRIVILEGES ON SEQUENCE public.maintenance_history_maintenance_history_id_seq TO rmtest;


-- Table: public.maintenance_history

-- DROP TABLE IF EXISTS public.maintenance_history;

-- Table: public.maintenance_history

-- DROP TABLE IF EXISTS public.maintenance_history;

CREATE TABLE IF NOT EXISTS maintenance_history
(
    maintenance_history_id bigint NOT NULL DEFAULT nextval('maintenance_history_maintenance_history_id_seq'::regclass),
    maintenance_id bigint,
    maintenance_status smallint,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    maintenance_id_display character varying COLLATE pg_catalog."default",
    cost_of_maintenance bigint,
    user_id bigint,
    remarks character varying COLLATE pg_catalog."default",
    root_cause_analysis character varying COLLATE pg_catalog."default",
    priority_index bigint,
    weightage smallint,
    action_taken character varying COLLATE pg_catalog."default",
    maintenance_key character varying COLLATE pg_catalog."default",
    status_id smallint,
    status smallint,
    create_time timestamp without time zone DEFAULT timezone('utc'::text, CURRENT_TIMESTAMP),
    root_cause_analysics text COLLATE pg_catalog."default",
    completion_notes text COLLATE pg_catalog."default",
    asset_id bigint,
    maintenance_type smallint,
    maintenance_activity text COLLATE pg_catalog."default",
    completion_date_time timestamp without time zone,
    subsystem character varying COLLATE pg_catalog."default",
    duration_of_activity integer,
    frequency_type smallint,
    activity_start_date timestamp without time zone,
    CONSTRAINT maintenance_history_pkey PRIMARY KEY (maintenance_history_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.maintenance_history
    OWNER to postgres;

-- Subtask History

-- Table: public.subtask_history

-- DROP TABLE IF EXISTS public.subtask_history;
CREATE SEQUENCE subtask_history_subtask_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
	
	GRANT ALL PRIVILEGES ON SEQUENCE public.subtask_history_subtask_history_id_seq TO rmtest;
	

CREATE TABLE IF NOT EXISTS public.subtask_history
(
    subtask_history_id bigint NOT NULL DEFAULT nextval('subtask_history_subtask_history_id_seq'::regclass),
    subtask_id bigint,
    maintenance_id bigint,
    inventory_qty bigint,
    time_spent integer,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    status smallint,
    subtask_display character varying COLLATE pg_catalog."default",
    requires_downtime smallint,
    remarks character varying COLLATE pg_catalog."default",
    maintenance_history_id bigint,
    status_id smallint,
    create_time timestamp without time zone DEFAULT timezone('utc'::text, CURRENT_TIMESTAMP),
    update_time timestamp without time zone,
    user_id bigint,
    CONSTRAINT subtask_history_pkey PRIMARY KEY (subtask_history_id)
)


TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.subtask_history
    OWNER to rmtest;
	
	GRANT ALL PRIVILEGES ON TABLE public.subtask_history TO rmtest;


DO $$BEGIN
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='assets' AND column_name='module_type') THEN ALTER TABLE assets ADD COLUMN module_type INTEGER[]; END IF;
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='assets' AND column_name='json_data') THEN ALTER TABLE assets ADD COLUMN json_data json; END IF;
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='screens' AND column_name='module_type') THEN ALTER TABLE screens ADD COLUMN module_type INTEGER; END IF;
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='screens' AND column_name='is_disable') THEN ALTER TABLE screens ADD COLUMN is_disable BOOLEAN; END IF;
IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='all_jsons' AND column_name='module_type') THEN ALTER TABLE all_jsons ADD COLUMN module_type INTEGER; END IF;
END$$;

INSERT INTO screens(
     id,screen_name, create_time, update_time, author, status_id, screen_parent_id, 
    route_path, screen_order, asset_type, main_menu, icon, bottom_menu, 
    has_sub_screen, display_name, actions, subsystem, m_status_id, 
    to_append_in_header, header_prefix, header_suffix, m_route_path, 
    module_type, is_disable
) 
VALUES 
    ( 1054,'Home', current_date, NULL, 'EyeUser', 1, NULL, '/Module', 1, 
        'All_Modules', FALSE, 'sidenav-home', FALSE, FALSE, 'Monitoring Overview', 
        NULL, NULL, 2, FALSE, NULL, NULL, NULL, 1, TRUE),
    ( 1055,'Performance Management', current_date, NULL, 'EyeUser', 1, NULL, 
        '/monitor/home', 2, 'All_Modules', FALSE, 'sidenav-perfomanance', FALSE, 
        FALSE, 'Monitoring Overview', NULL, NULL, 2, FALSE, NULL, NULL, NULL, 2, FALSE),
    ( 1056,'IR Thermography', current_date, NULL, 'EyeUser', 1, NULL, 
        '/IR/home', 3, 'All_Modules', FALSE, 'sidenav-irthermography', FALSE, 
        FALSE, 'Monitoring Overview', NULL, NULL, 2, FALSE, NULL, NULL, NULL, 3, TRUE),
    ( 1057,'Asset Lifecycle Management', current_date, NULL, 'EyeUser', 1, NULL, 
        '/alm/reliabilitycentered', 4, 'All_Modules', FALSE, 'sidenav-assetlifecycle', FALSE, 
        FALSE, 'Monitoring Overview', NULL, NULL, 2, FALSE, NULL, NULL, NULL, 4, FALSE),
    ( 1058,'Asset Simulator', current_date, NULL, 'EyeUser', 1, NULL, 
        '/AS/savedselection', 5, 'All_Modules', FALSE, 'sidenav-assetsimulator', FALSE, 
        FALSE, 'Monitoring Overview', NULL, NULL, 2, FALSE, NULL, NULL, NULL, 5, TRUE),
    ( 1059,'Digital Twin', current_date, NULL, 'EyeUser', 1, NULL, 
        '/digital/home', 6, 'All_Modules', FALSE, 'sidenav-digitaltwin', FALSE, 
        FALSE, 'Monitoring Overview', NULL, NULL, 2, FALSE, NULL, NULL, NULL, 6, TRUE);


INSERT INTO screens(id, screen_name, author, status_id, route_path, screen_order, asset_type, main_menu, icon, bottom_menu, has_sub_screen, m_status_id, to_append_in_header,display_name,screen_unique_id,module_type)
VALUES (1060, 'Maintenance Planner', 'EyeUser', 1 ,'/', 2, 'ALM', false, 'Monitor_Asset', false, true, 2, false,'Maintenance Planner','B6D0F858-2941-4C77-ACA6-31E26F9ADF4F',4);     		  		  
				  
INSERT INTO screens( id,screen_name, author, status_id, route_path, screen_order, asset_type, main_menu, icon, bottom_menu, has_sub_screen, m_status_id, to_append_in_header,screen_unique_id,screen_parent_id,module_type)
VALUES (1061, 'Time Based Maintenanace', 'EyeUser', 1 ,'/timebasedmaintenance', 2.2, 'ALM', false, 'Monitor_Asset', false, true, 2, false,'79FB4C22-E4A6-43B3-AB4A-260360FD2959',1060,4);	  

INSERT INTO screens( id,screen_name, author, status_id, route_path, screen_order, asset_type, main_menu, icon, bottom_menu, has_sub_screen, m_status_id, to_append_in_header,screen_unique_id,screen_parent_id,module_type)
VALUES (1062, 'Reliability centered Maintenanace', 'EyeUser', 1 ,'/reliabilitycentered', 2.1, 'ALM', false, 'Monitor_Asset', false, true, 2, false,'0A1D0339-ECE9-4D23-975E-E67C475D9329',1060,4);
				  
Insert into 
screens(id,screen_name,author,status_id,route_path,screen_order,asset_type,main_menu,icon,bottom_menu,has_sub_screen,m_status_id,to_append_in_header,screen_unique_id,module_type)
values (1063,'Corrective Maintenance','EyeUser',1,'/correctivemaintenance',2.3,'ALM',true,'Monitor_Asset',false,true,2,false,'178BFDD3-3DC1-43CF-B175-6E78D904E1EF',4);

Insert INTO 
screens(id,screen_name,author,status_id,route_path,screen_order,asset_type,main_menu,icon,bottom_menu,has_sub_screen,m_status_id,to_append_in_header,screen_unique_id,module_type)
values (1064,'Maintenance Configuration','EyeUser',1,'/',92,'ADMIN',false,'Transformer_Nameplate',false,false,2,false,'59454825-B577-4F8A-81C0-ADD4818A3577',10);

Insert INTO 
screens(id,screen_name,author,status_id,route_path,screen_order,asset_type,main_menu,bottom_menu,has_sub_screen,m_status_id,to_append_in_header,screen_unique_id,screen_parent_id,module_type)
values (1065,'Maintenance Template','EyeUser',1,'/maintenancetype',92.1,'ADMIN',true,false,false,2,false,'1EEAECC3-6AB8-4283-846D-5A6D7B2B36C7',1064,10);

Insert INTO 
screens(id,screen_name,author,status_id,route_path,screen_order,asset_type,main_menu,bottom_menu,has_sub_screen,m_status_id,to_append_in_header,screen_unique_id,screen_parent_id,module_type)
values (1066,'Maintenance','EyeUser',1,'/maintenanceScreen',92.2,'ADMIN',false,false,false,2,false,'1EEAECC3-6AB8-4283-846D-5A6D7B2B36C7',1064,10);

update screens set module_type=10 where asset_type='ADMIN';

update screens set module_type=2 where asset_type='MONITOR';

update assets set module_type='{2}';

update screens set module_type=2 where asset_type!='All_Modules' and asset_type!='ADMIN' and 
asset_type!='ALM' and asset_type!='IR' and asset_type!='AssetSimulator' and asset_type!='DT' ;

update screens set module_type=4 where asset_type='ALM';

update screens set status_id=2 where route_path='/vfd_panel' and screen_name ilike '%Dry%' and asset_type='MONITOR';

update assets set module_type='{2,4}' where id=1;

update assets set module_type='{2,4}' where parent_asset_id=1;



--update all_jsons set module_type=2 



INSERT INTO public.all_jsons(
	asset_id, asset_type_name, json_type, subsystem, json, module_type)
	VALUES (0, 'reliability_centered_maintenanace', 37, 'reliabilitycenteredmaintenanace', '
	{
  "pageHeading": "",
  "data": [
    {
      "mainHeading": "",
      "hasheading": false,
      "isCollapsable": false,
      "widgetWidth": "100%",
      "className": " rcmMainContainer",
      "components": [
        {
          "widgetWidth": "",
          "className": "rcmMainContainer",
          "data": [
            {
              "widgetWidth": "100%",
              "className": " noBackground RcmTable",
              "data": [
                {
                  "tagName": "",
                  "className": "",
                  "height": "",
                  "width": "",
                  "displayName": "",
                  "componentName": "RcmTableComponent"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}',  4);

INSERT INTO public.all_jsons(
	asset_id, asset_type_name, json_type, subsystem, json, module_type)
	VALUES (0, 'dynamic_columns', 35, 'rcm', '{
    "data": {
        "pageHeading": "",
        "rcm_columns": [
            {
                "columns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Priority",
                        "propertyName": "priorityIndex",
                        "operationType": "priorityIndex",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Date of Completion",
                        "propertyName": "completionDateTime",
                        "operationType": "displayDoc",
                        "filterOption": false
                    },
                    {
                        "displayName": "Substation",
                        "propertyName": "substation",
                        "operationType": "displaySubstation",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Location",
                        "propertyName": "location",
                        "operationType": "displayLocation",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Duration of Activity",
                        "propertyName": "durationOfActivity",
                        "operationType": "displayDuration",
                        "filterOption": false
                    },
                    {
                        "displayName": "Action",
                        "propertyName": "action",
                        "operationType": "displayAction",
                        "filterOption": false
                    }
                ],
                "CompanyColumns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Priority",
                        "propertyName": "priorityIndex",
                        "operationType": "priorityIndex",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Substation",
                        "propertyName": "substation",
                        "operationType": "displaySubstation",
                        "filterOption": false
                    },
                    {
                        "displayName": "Location",
                        "propertyName": "location",
                        "operationType": "displayLocation",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    }
                ],
                "RegionColumns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Priority",
                        "propertyName": "priorityIndex",
                        "operationType": "priorityIndex",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Substation",
                        "propertyName": "substation",
                        "operationType": "displaySubstation",
                        "filterOption": false
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    }
                ],
                "SubstationColumns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    }
                ],
                "AssetColumns_Prioritized": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Priority",
                        "propertyName": "priorityIndex",
                        "operationType": "priorityIndex",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Action",
                        "propertyName": "action",
                        "operationType": "displayAction",
                        "filterOption": false
                    }
                ],
                "AssetColumns_History": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Date of completion",
                        "propertyName": "completionDateTime",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Action",
                        "propertyName": "action",
                        "operationType": "displayAction",
                        "filterOption": false
                    }
                ]
            }
        ]
    }
}',  4);

INSERT INTO public.all_jsons(
	asset_id, asset_type_name, json_type, subsystem, json, module_type)
	VALUES (0, 'dynamic_columns', 35, 'tbm', '{
    "data": {
        "pageHeading": "",
        "tbm_columns": [
            {
                "columns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Priority",
                        "propertyName": "priorityIndex",
                        "operationType": "priorityIndex",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Date of Completion",
                        "propertyName": "completionDateTime",
                        "operationType": "displayDoc",
                        "filterOption": false
                    },
                    {
                        "displayName": "Substation",
                        "propertyName": "substation",
                        "operationType": "displaySubstation",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Location",
                        "propertyName": "location",
                        "operationType": "displayLocation",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Duration of Activity",
                        "propertyName": "durationOfActivity",
                        "operationType": "displayDuration",
                        "filterOption": false
                    },
                    {
                        "displayName": "Action",
                        "propertyName": "action",
                        "operationType": "displayAction",
                        "filterOption": false
                    }
                ],
                "CompanyColumns": [
                    
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },

                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Substation",
                        "propertyName": "substation",
                        "operationType": "displaySubstation",
                        "filterOption": false
                    },
                    {
                        "displayName": "Location",
                        "propertyName": "location",
                        "operationType": "displayLocation",
                        "filterOption": true,
                        "selected": "ALL"
                    },
                    {
                        "displayName": "Duration of Activity",
                        "propertyName": "durationOfActivity",
                        "operationType": "displayDuration",
                        "filterOption": false
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    }

                ],
                "RegionColumns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    
                                        {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },

                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Substation",
                        "propertyName": "substation",
                        "operationType": "displaySubstation",
                        "filterOption": false
                    },
                                        {
                        "displayName": "Duration of Activity",
                        "propertyName": "durationOfActivity",
                        "operationType": "displayDuration",
                        "filterOption": false
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    }
                ],
                "SubstationColumns": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                                                            {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Name",
                        "propertyName": "assetName",
                        "operationType": "displayassetName",
                        "filterOption": false
                    },
                    {
                        "displayName": "Asset Type",
                        "propertyName": "assetTypeName",
                        "operationType": "displaytypeName",
                        "filterOption": true,
                        "selected": "ALL"
                    },

                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                    {
                        "displayName": "Duration of Activity",
                        "propertyName": "durationOfActivity",
                        "operationType": "displayDuration",
                        "filterOption": false
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    }
                    
                ],
                "AssetColumns_Planned": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                                        {
                        "displayName": "Duration of Activity",
                        "propertyName": "durationOfActivity",
                        "operationType": "displayDuration",
                        "filterOption": false
                    },
                    {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Action",
                        "propertyName": "action",
                        "operationType": "displayAction",
                        "filterOption": false
                    }
                ],
                "AssetColumns_History": [
                    {
                        "displayName": "srNo",
                        "propertyName": "srNo",
                        "operationType": "displaySerial",
                        "filterOption": false
                    },
                    {
                        "displayName": "Maintenance Activity",
                        "propertyName": "maintenanceActivity",
                        "operationType": "displayValue",
                        "filterOption": false
                    },
                    {
                        "displayName": "Subsystem",
                        "propertyName": "subsystem",
                        "operationType": "displaySubsystem",
                        "filterOption": false
                    },
                                        {
                        "displayName": "Scheduled Date",
                        "propertyName": "startDate",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Date of completion",
                        "propertyName": "completionDateTime",
                        "operationType": "displayDate",
                        "filterOption": false
                    },
                    {
                        "displayName": "Action",
                        "propertyName": "action",
                        "operationType": "displayAction",
                        "filterOption": false
                    }
                ]
            }
        ]
    }
}', 4);

	
;

UPDATE public.version SET version = 1280 WHERE type = 'db_version';

--Customer id = 1
-- shashi
--criticality index json

INSERT INTO all_jsons (asset_id, asset_type_name, json_type, json)
VALUES (0, 'criticality_index', 38, '{
    "criticalityFactors": {
        "Dependence on the Asset": [
            {
                "name": "Low",
                "value": 1,
                "i-info": "Failure of this asset would have minimal impact on other parts of the system."
            },
             {
                "name": "Moderate",
                "value": 2,
                "i-info": "Failure of this asset would cause disruptions to a limited number of dependent assets or processes."
            },
            {
                "name": "Serious",
                "value": 3,
                "i-info": "Failure of this asset would cause disruptions to several dependent assets or processes."
            },
             {
                "name": "Severe",
                "value": 4,
                "i-info": "Failure of this asset would cause major disruptions to critical processes or large sections of the system."
            },
             {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "Failure of this asset would cause widespread outages across the entire grid or critical infrastructure."
            }
        ],
        "Replaceability and Repair Time": [
            {   "name": "Low",
                "value": 1,
                "i-info": "Replacing or repairing this asset requires an exceptional amount of time and resources, leading to a lengthy outage with significant consequences"
            },
            {
                "name": "Moderate",
                "value": 2,
                "i-info": "Repairing or replacing the asset takes a considerable amount of time, causing a prolonged outage that disrupts critical operations."
            },
            {
                "name": "Serious",
                "value": 3,
                "i-info": "Replacing or repairing the asset takes a moderate amount of time, causing a service interruption that may impact operations or customer service."
            },
             {
                "name": "Severe",
                "value": 4,
                "i-info": "Replacing or repairing the asset takes a relatively short amount of time, causing minimal disruption to operations."
            },
             {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "Replacing or repairing the asset takes a relatively short amount of time, causing minimal disruption to operations."
            }
        ],
        "Loss of Profits": [
            {
                "name": "Low",
                "value": 1,
                "i-info": "<0.1 M Euro"
            },
             {
                "name": "Moderate",
                "value": 2,
                "i-info": "0.1 to 1 M Euro"
            },
             {
                "name": "Serious",
                "value": 3,
                "i-info": "1 to 10 M Euro"
            },
            {
                "name": "Severe",
                "value": 4,
                "i-info": "10 to 100 M Euro"
            },
            {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "> 100 M Euro"
            }
        ],
        "Public Reputation of the Organization": [ 
            {    "name": "Low",
                "value": 1,
                "i-info": "Failure of this asset has minimal or no impact on the organization''s public reputation."
            },
             {
                "name": "Moderate",
                "value": 2,
                "i-info": "Local and Temporary [Few External Parties Complaining about Utility or Media Critics"
            },
            {
                "name": "Serious",
                "value": 3,
                "i-info": "Regional and National (< 3 Days) [lots of External Parties complaining about Utility with media relays]"
            },
             {
                "name": "Severe",
                "value": 4,
                "i-info": "Regional and National (1 to 2 weeks) [Expression of external official actors like politics, state representative, etc. that target utility''s legitimacy]"
            },
            {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "Reginal and National (> 2 weeks) [Long Term external association of public actors/representatives that greatly affect Utility''s Legitimacy]"
            }
        ]
    }
}');
;

UPDATE public.version SET version = 1284 WHERE type = 'db_version';

--Customer id = 1
-- shashi
--Asset Type name changed for Capacitor Bank

update asset_types set asset_type_name = 'Capacitor_Bank' where asset_type_name = 'Capacitor Bank';
;

UPDATE public.version SET version = 1290 WHERE type = 'db_version';

--Customer id = 1
-- shibani
--EMS-16556 configurable columns

INSERT INTO all_jsons (asset_id, asset_type_name, json_type, subsystem, json)
VALUES (
    0,
    'pdrealtime',
    39,
    null,
    '{
      "tabs": {
        "Average": { "label": "Average", "index": 0 },
        "Max": { "label": "Max", "index": 1 }
      },
      "customColumns": [
        {
          "propertyName": "SensorName",
          "displayName": "Sensors",
          "operationType": "displayValue"
        },
        {
          "propertyName": "maxAmplitude",
          "displayName": "Max Amplitude",
          "operationType": "maxamplitude"
        },
        {
          "propertyName": "avgAmplitude",
          "displayName": "Average Amplitude",
          "operationType": "avgamplitude"
        },
        {
          "propertyName": "dischargeRate",
          "displayName": "Discharge Rate",
          "operationType": "dischargerate"
        },
        {
          "propertyName": "avgDischargeRate",
          "displayName": "Average Discharge Rate",
          "operationType": "avgdischargerate"
        },
        {
          "propertyName": "pdStatus",
          "displayName": "PD Status",
          "operationType": "pdstatus"
        },
        {
          "propertyName": "action",
          "displayName": "Action",
          "operationType": "button",
          "buttonAction": {
            "type": "addStatus",
            "label": "Add Status",
            "action": "openPopup"
          }
        },
        {
          "propertyName": "legend",
          "displayName": " ",
          "operationType": "tooltip",
          "tooltipFields": [
            {
              "key": "threshold",
              "labelKey": "resource.motor.pdanalytics.pd.pdrealtime.THRESHOLD_=",
              "unit": "mV"
            },
            {
              "key": "gain",
              "labelKey": "resource.motor.pdanalytics.pd.pdrealtime.GAIN_=",
              "unit": "dB"
            },
            {
              "key": "phase_shift",
              "labelKey": "resource.motor.pdanalytics.pd.pdrealtime.PHASE_SHIFT_=",
              "unit": "°"
            }
          ]
        }
      ]
    }'::json
	
);
;

UPDATE public.version SET version = 1308 WHERE type = 'db_version';

--Customer id = 1
-- shashi
--dry type transformer asset dashboard model 2

INSERT INTO public.all_jsons(
	asset_id, asset_type_name, json_type, subsystem, json)
	VALUES (0, 'all_assets', 26, 'dry_type_transformer', '
{
  "pageHeading": "",
  "data": [
    {
      "mainHeading": "",
      "hasheading": false,
      "isCollapsable": false,
      "widgetWidth": "",
      "className": "",
      "components": [
        {
          "className": "noBackground",
          "data": [
            {
              "widgetWidth": "100%",
              "className": "",
              "data": [
                {
                  "tagName": "",
                  "className": "",
                  "height": "",
                  "realTagsForWidget": [],
                  "alarmIds": [],
                  "heading": "",
                  "unit": "",
                  "displayName": "",
                  "componentName": "AssetDashboardModel2",
                  "customObject": {
                    "categories": [
                      {
                        "name": "catg1",
                        "categoryName": "Category 1",
                        "categoryTagName": "ASSET_CATG",
                        "categoryTrueValue": "1",
                        "showhiWidget": true,
                        "hiWidget": [
                          {
                            "displayName": "All",
                            "color": "#FFFFFF",
                            "value": null
                          },
                          {
                            "displayName": "Very Good",
                            "color": "#39B54A",
                            "min": 0,
                            "max": 1,
                            "value": null
                          },
                          {
                            "displayName": "Good",
                            "color": "#8CC63F",
                            "min": 1,
                            "max": 2,
                            "value": null
                          },
                          {
                            "displayName": "Fair",
                            "color": "#D9E021",
                            "min": 2,
                            "max": 3,
                            "value": null
                          },
                          {
                            "displayName": "Poor",
                            "color": "#FCEE21",
                            "min": 3,
                            "max": 4,
                            "value": null
                          },
                          {
                            "displayName": "Unsafe",
                            "color": "#F7931E",
                            "min": 4,
                            "max": 5,
                            "value": null
                          }
                        ],
                        "alarmsWidget": [
                          {
                            "alertCategory": 0,
                            "alarmStatusEnum": 2,
                            "displayName": "Health Alarms",
                            "color": "#FF0000",
                            "value": null,
                            "showViewAll": "true",
                            "routerLink": "monitor/asset-health-alerts"
                          },
                          {
                            "alertCategory": 0,
                            "alarmStatusEnum": 1,
                            "displayName": "Health Warnings",
                            "color": "#F7931E",
                            "value": null,
                            "showViewAll": "true",
                            "routerLink": "monitor/asset-health-alerts"
                          },
                          {
                            "alertCategory": 1,
                            "alarmStatusEnum": 2,
                            "displayName": "Condition Alarms",
                            "color": "#FF0000",
                            "value": null,
                            "showViewAll": "true",
                            "routerLink": "monitor/asset-condition-alerts"
                          },
                          {
                            "alertCategory": 1,
                            "alarmStatusEnum": 1,
                            "displayName": "Condition Warnings",
                            "color": "#F7931E",
                            "value": null,
                            "showViewAll": "true",
                            "routerLink": "monitor/asset-condition-alerts"
                          },
                          {
                            "alertCategory": 0,
                            "alarmStatusEnum": 0,
                            "displayName": "Device Alerts",
                            "color": "#FF0000",
                            "value": null,
                            "showViewAll": "true",
                            "routerLink": "monitor/system_alerts"
                          }
                        ],
                        "columns": [
                          {
                            "displayName": "Watch List",
                            "propertyName": "watchList",
                            "operationType": "displayIcon",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 2,
                            "filterOption": false
                          },
                          {
                            "displayName": "SrNo.",
                            "propertyName": "srNo",
                            "operationType": "displayNumber",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": false
                          },
                          {
                            "displayName": "Asset Name",
                            "propertyName": "assetName",
                            "operationType": "displayLink",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": true
                          },
                          {
                            "displayName": "Health Index",
                            "propertyName": "healthIndex",
                            "operationType": "displayHealthIndex",
                            "dataProcessorOperation": 0,
                            "tagName": "HEALTH_INDEX",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "PD Level",
                            "propertyName": "pdLevel",
                            "operationType": "displayPDLevel",
                            "dataProcessorOperation": 0,
                            "tagName": "PD_LEVEL_MAX",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Alerts",
                            "propertyName": "alerts",
                            "operationType": "alertIcon",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 3,
                            "filterOption": false
                          },
                          {
                            "displayName": "Device Alerts",
                            "propertyName": "deviceAlerts",
                            "operationType": "deviceAlertIcon",
                            "dataProcessorOperation": 0,
                            "tagName": "CONNECTED_DEVICE_HEALTH",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Age",
                            "propertyName": "age",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 1,
                            "tagName": "COMM_DATE",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "MFG Site",
                            "propertyName": "mgfSite",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "MFG_SITE",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": true
                          },
                          {
                            "displayName": "Location",
                            "propertyName": "parentAssetName",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": true
                          },
                          {
                            "displayName": "Asset Description",
                            "propertyName": "assetDescription",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "ASSET_TAG_DESCRIPT",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Criticality Index",
                            "propertyName": "criticalityIndex",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "CRITICALITY_INDEX",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Alarms",
                            "propertyName": "alarmCount",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": false
                          },
                          {
                            "displayName": "Alarm Ack",
                            "propertyName": "alarmAck",
                            "operationType": "displayAck",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": false
                          }
                        ]
                      },
                      {
                        "name": "catg2",
                        "categoryName": "Category 2",
                        "categoryTagName": "ASSET_CATG",
                        "categoryTrueValue": "2",
                        "showhiWidget": true,
                        "hiWidget": [
                          {
                            "displayName": "All",
                            "color": "#FFFFFF",
                            "value": null
                          },
                          {
                            "displayName": "Very Good",
                            "color": "#39B54A",
                            "min": 0,
                            "max": 1,
                            "value": null
                          },
                          {
                            "displayName": "Good",
                            "color": "#8CC63F",
                            "min": 1,
                            "max": 2,
                            "value": null
                          },
                          {
                            "displayName": "Fair",
                            "color": "#D9E021",
                            "min": 2,
                            "max": 3,
                            "value": null
                          },
                          {
                            "displayName": "Poor",
                            "color": "#FCEE21",
                            "min": 3,
                            "max": 4,
                            "value": null
                          },
                          {
                            "displayName": "Unsafe",
                            "color": "#F7931E",
                            "min": 4,
                            "max": 5,
                            "value": null
                          }
                        ],
                        "alarmsWidget": [
                          {
                            "alertCategory": 0,
                            "alarmStatusEnum": 2,
                            "displayName": "Health Alarms",
                            "color": "#FF0000",
                            "value": null
                          },
                          {
                            "alertCategory": 0,
                            "alarmStatusEnum": 1,
                            "displayName": "Health Warnings",
                            "color": "#F7931E",
                            "value": null
                          },
                          {
                            "alertCategory": 1,
                            "alarmStatusEnum": 2,
                            "displayName": "Condition Alarms",
                            "color": "#FF0000",
                            "value": null
                          },
                          {
                            "alertCategory": 1,
                            "alarmStatusEnum": 1,
                            "displayName": "Condition Warnings",
                            "color": "#F7931E",
                            "value": null
                          },
                          {
                            "alertCategory": 0,
                            "alarmStatusEnum": 0,
                            "displayName": "Device Alerts",
                            "color": "#FF0000",
                            "value": null
                          }
                        ],
                        "columns": [
                          {
                            "displayName": "Watch List",
                            "propertyName": "watchList",
                            "operationType": "displayIcon",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 2,
                            "filterOption": false
                          },
                          {
                            "displayName": "SrNo.",
                            "propertyName": "srNo",
                            "operationType": "displayNumber",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": false
                          },
                          {
                            "displayName": "Asset Name",
                            "propertyName": "assetName",
                            "operationType": "displayLink",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": true
                          },
                          {
                            "displayName": "Health Index",
                            "propertyName": "healthIndex",
                            "operationType": "displayHealthIndex",
                            "dataProcessorOperation": 0,
                            "tagName": "HEALTH_INDEX",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Oil Health Index",
                            "propertyName": "oilHealthIndex",
                            "operationType": "displayHealthIndex",
                            "dataProcessorOperation": 0,
                            "tagName": "MT_DGA_HI",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "PD Level",
                            "propertyName": "pdLevel",
                            "operationType": "displayPDLevel",
                            "dataProcessorOperation": 0,
                            "tagName": "PD_LEVEL_MAX",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Alerts",
                            "propertyName": "alerts",
                            "operationType": "alertIcon",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 3,
                            "filterOption": false
                          },
                          {
                            "displayName": "Device Alerts",
                            "propertyName": "deviceAlerts",
                            "operationType": "deviceAlertIcon",
                            "dataProcessorOperation": 0,
                            "tagName": "CONNECTED_DEVICE_HEALTH",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Age",
                            "propertyName": "age",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 1,
                            "tagName": "COMM_DATE",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "MFG Site",
                            "propertyName": "mgfSite",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "MFG_SITE",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": true
                          },
                          {
                            "displayName": "Location",
                            "propertyName": "parentAssetName",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": true
                          },
                          {
                            "displayName": "Asset Description",
                            "propertyName": "assetDescription",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "ASSET_TAG_DESCRIPT",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Criticality Index",
                            "propertyName": "criticalityIndex",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "CRITICALITY_INDEX",
                            "multipleProperties": [],
                            "dataFormat": 1,
                            "filterOption": false
                          },
                          {
                            "displayName": "Alarms",
                            "propertyName": "alarmCount",
                            "operationType": "displayValue",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": false
                          },
                          {
                            "displayName": "Alarm Ack",
                            "propertyName": "alarmAck",
                            "operationType": "displayAck",
                            "dataProcessorOperation": 0,
                            "tagName": "",
                            "multipleProperties": [],
                            "dataFormat": 0,
                            "filterOption": false
                          }
                        ]
                      }
                    ]
                  }
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}');
;

UPDATE public.version SET version = 1328 WHERE type = 'db_version';

--Customer id = 1
-- Basker
--hv gis cable asset icon

UPDATE public.all_jsons SET json = '{
    "FixedNameplateTags": [
        {
            "tagName": "ASSET_TAG_DESCRIPT",
            "directionRight": false
        },
        {
            "tagName": "MAKE",
            "directionRight": false
        },
        {
            "tagName": "COMM_DATE",
            "directionRight": false
        },
        {
            "tagName": "MVA_RATING",
            "directionRight": false
        },
        {
            "tagName": "ASSET_CATG",
            "directionRight": false
        },
        {
            "tagName": "RATED_VOLT",
            "directionRight": false
        },
        {
            "tagName": "MC_TYPE",
            "directionRight": false
        },
        {
            "tagName": "MC_POLES",
            "directionRight": false
        },
        {
            "tagName": "MC_TH_INS_CLASS",
            "directionRight": false
        },
        {
            "tagName": "MFG_SITE",
            "directionRight": true
        },
        {
            "tagName": "BUSS_ZONES",
            "directionRight": true
        },
        {
            "tagName": "PLANT_AREA",
            "directionRight": true
        },
        {
            "tagName": "INSTAL_PHASE",
            "directionRight": true
        },
        {
            "tagName": "PLANT_NAME",
            "directionRight": true
        },
        {
            "tagName": "SUB_PROCESS_NAME",
            "directionRight": true
        },
        {
            "tagName": "SUBSTATION",
            "directionRight": true
        },
        {
            "tagName": "CONN_SW_BOARD",
            "directionRight": true
        },
        {
            "tagName": "MAP_LAT",
            "directionRight": true
        },
        {
            "tagName": "MAP_LONG",
            "directionRight": true
        }
    ],
    "SummaryModel": "model1",
    "ShowAlarm": true,
    "LoadData": [
        {
            "tagName": "LOAD_CURR_PH_B",
            "directionRight": false,
            "componentName": "NameValueButton"
        },
        {
            "tagName": "VOLT_PH_B",
            "directionRight": true,
            "componentName": "NameValueButton"
        }
    ],
    "Recommendation": [
        {
            "customObject": {
                "bgColor": "#fff7d1 "
            },
            "componentName": "RecommendationWidget"
        }
    ],
    "Labels": [
        {
            "label": "",
            "link": "",
            "data": [
                {
                    "MainHeading": "Health Summary",
                    "ScreenName": "health",
                    "Configured": "true",
                    "NoOfComponents": "4",
                    "MainComponentName": "health",
                    "redirectLink": "/system_dashboard",
                    "sideAlarm": "false",
                    "unit": "",
                    "order": "1",
                    "location": "left",
                    "className": "fourCol-Last50",
                    "model2Class": "dataListWrapper",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "HEALTH_INDEX",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "4",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "CRITICALITY_INDEX",
                            "className": "noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "5",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "RISK_INDEX",
                            "className": "noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "4",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "",
                            "className": "item50 noCards realTimeBarGraph",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "",
                            "sideAlarm": "",
                            "min": "",
                            "max": "",
                            "displayName": "",
                            "componentName": "RealtimeBarChart"
                        },
                        {
                            "tagName": "",
                            "className": "item100 noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "Coverage Rate",
                            "displayName": "Health Index",
                            "customObject": {
                                "unit": "%",
                                "infoMessage": "The coverage rate indicates the percentage of required parameters provided for calculating the Health Index (HI).A higher coverage rate improves the reliability of the HI calculation, while a lower coverage rate suggests that the result may be less accurate due to insufficient input data.",
                                "fontWeight": "bold",
                                "textAlign": "left",
                                "columns": [
                                    {
                                        "displayName": "Circuit Breaker HI",
                                        "propertyName": "circuit_breaker",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "Cable Termination HI",
                                        "propertyName": "cable_termination",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "Busbar HI",
                                        "propertyName": "busbar",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "PD HI",
                                        "propertyName": "partial_discharge",
                                        "operationType": "displayValue"
                                    }
                                ]
                            },
                            "unit": "",
                            "isWidget": "",
                            "sideAlarm": "",
                            "min": "",
                            "max": "",
                            "componentName": "CoverageRate"
                        }
                    ]
                },
                {
                    "MainHeading": "Circuit Breaker",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "6",
                    "MainComponentName": "breaker_comp",
                    "redirectLink": "/event_analysis",
                    "sideAlarm": "",
                    "unit": "",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row",
                    "location": "left",
                    "order": "3",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "",
                    "components": [
                        {
                            "height": "",
                            "width": "",
                            "className": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "subHeading": "Breaker Status",
                            "ShowTagType": true,
                            "unit": "",
                            "sideAlarm": "",
                            "displayName": "",
                            "tagName": "CB_STATUS",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "left"
                            },
                            "componentName": "CircuitBreaker",
                            "imageName": "cb"
                        },
                        {
                            "tagName": "CB_CNT_WEAR_CUMM",
                            "className": "cbContact",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "100",
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "center"
                            },
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "CB_STATUS",
                            "className": "CBRespFull",
                            "height": "",
                            "width": "",
                            "calculateTime": "true",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "showLife": "false",
                            "ShowTagType": true,
                            "valueSize": 4,
                            "isWidthFull": "true",
                            "sideAlarm": "false",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "displayName": "Time Since Last Operation",
                            "componentName": "TapCount"
                        },
                        {
                            "tagName": "CB_OPT_COUNT_TOTAL",
                            "className": "CBRespFull",
                            "height": "",
                            "width": "",
                            "calculateTime": "false",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "showLife": "false",
                            "valueSize": 4,
                            "isWidthFull": "true",
                            "ShowTagType": true,
                            "sideAlarm": "true",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "displayName": "Total No. of Breaker Operation",
                            "componentName": "TapCount"
                        },
                        {
                            "tagName": "CB_OPEN_TIME_PH_A",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "Opening Time",
                            "unit": "",
                            "prefix": [],
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "100",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "color": {
                                "greenRange": 20,
                                "amberRange": 25,
                                "redRange": 55
                            },
                            "displayName": "",
                            "componentName": "RangeSlider"
                        },
                        {
                            "tagName": "CB_CLOSE_TIME_PH_A",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "Closing Time",
                            "unit": "",
                            "prefix": [],
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "100",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "color": {
                                "greenRange": 20,
                                "amberRange": 25,
                                "redRange": 55
                            },
                            "displayName": "",
                            "componentName": "RangeSlider"
                        },
                        {
                            "tagName": "CB_MECH_RECHRG_TIME",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "Recharging Time",
                            "unit": "",
                            "prefix": [],
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "25",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "color": {
                                "greenRange": 20,
                                "amberRange": 25,
                                "redRange": 55
                            },
                            "displayName": "",
                            "componentName": "RangeSlider"
                        }
                    ]
                },
                {
                    "MainHeading": "Temperature",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "5",
                    "MainComponentName": "",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "5",
                    "ShowViewAll": "false",
                    "redirectLink": "",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row cardWrap",
                    "location": "right",
                    "heading": " ",
                    "subHeading": " ",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "AMB_TEMP",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "subHeading": "Deg C",
                            "displayName": "Ambient",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "imageName": "tempIcon.gif",
                            "componentName": "RealtimeGaugeWidget"
                        },
                        {
                            "tagName": "AMB_HUMIDITY",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "displayName": "Ambient",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "imageName": "humidity.png",
                            "componentName": "RealtimeGaugeWidget"
                        },
                        {
                            "tagName": "BB_TEMP_P%",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max Busbar",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "displayName": "",
                            "imageName": "tempIcon.gif",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        },
                        {
                            "tagName": "VCB_JAW_CNT_TEMP_P%",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max Breaker",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "subHeading": "Deg C",
                            "displayName": "",
                            "imageName": "tempIcon.gif",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        },
                        {
                            "tagName": "CBL_TER_TEMP_PH_%",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max Cable Termination",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "ShowTagType": true,
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "subHeading": "Deg C",
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "imageName": "tempIcon.gif",
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        }
                    ]
                },
                {
                    "MainHeading": "Cable Termination",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "3",
                    "MainComponentName": "",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "7",
                    "ShowViewAll": "false",
                    "redirectLink": "/termination_chamber/vital",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row cardWrap",
                    "location": "right",
                    "heading": " ",
                    "subHeading": " ",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "CBL_TER_TEMP_PH_A",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "CONNCTD_ASSET"
                            ],
                            "prefix": [
                                ""
                            ],
                            "heading": "Connected Cable",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "100",
                            "subHeading": "Max Cable Termination Temp.",
                            "displayName": "",
                            "imageName": "icon-cable.svg",
                            "componentName": "ConditionalWidget",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "conditionalProperties": {
                                "OnTrue": "LinkWidget",
                                "OnFalse": ""
                            },
                            "redirectLink": "/temp_and_humidity/termination"
                        }
                    ]
                }
            ]
        }
    ]
}'
WHERE json_type=0 and asset_type_name='mv_swgr_ais_bay' and asset_id=0;

UPDATE public.all_jsons SET json = '{
    "FixedNameplateTags": [
        {
            "tagName": "ASSET_TAG_DESCRIPT",
            "directionRight": false
        },
        {
            "tagName": "MAKE",
            "directionRight": false
        },
        {
            "tagName": "COMM_DATE",
            "directionRight": false
        },
        {
            "tagName": "MVA_RATING",
            "directionRight": false
        },
        {
            "tagName": "ASSET_CATG",
            "directionRight": false
        },
        {
            "tagName": "RATED_VOLT",
            "directionRight": false
        },
        {
            "tagName": "MC_TYPE",
            "directionRight": false
        },
        {
            "tagName": "MC_POLES",
            "directionRight": false
        },
        {
            "tagName": "MC_TH_INS_CLASS",
            "directionRight": false
        },
        {
            "tagName": "MFG_SITE",
            "directionRight": true
        },
        {
            "tagName": "BUSS_ZONES",
            "directionRight": true
        },
        {
            "tagName": "PLANT_AREA",
            "directionRight": true
        },
        {
            "tagName": "INSTAL_PHASE",
            "directionRight": true
        },
        {
            "tagName": "PLANT_NAME",
            "directionRight": true
        },
        {
            "tagName": "SUB_PROCESS_NAME",
            "directionRight": true
        },
        {
            "tagName": "SUBSTATION",
            "directionRight": true
        },
        {
            "tagName": "CONN_SW_BOARD",
            "directionRight": true
        },
        {
            "tagName": "MAP_LAT",
            "directionRight": true
        },
        {
            "tagName": "MAP_LONG",
            "directionRight": true
        }
    ],
    "SummaryModel": "model1",
    "ShowAlarm": true,
    "LoadData": [
        {
            "tagName": "LOAD_CURR_PH_B",
            "directionRight": false,
            "componentName": "NameValueButton"
        },
        {
            "tagName": "VOLT_PH_B",
            "directionRight": true,
            "componentName": "NameValueButton"
        }
    ],
    "Recommendation": [
        {
            "customObject": {
                "bgColor": "#fff7d1 "
            },
            "componentName": "RecommendationWidget"
        }
    ],
    "ConnectedGIS": {
        "displayName": "Connected GIS:",
        "items": [
            {
                "customObject": {},
                "tagNames": [
                    "CONN_SW_BOARD"
                ],
                "className": "noCards connectedGisChild",
                "imageName": "icon-hv_gis_bay.svg",
                "unit": "",
                "componentName": "ConditionalWidget",
                "conditionalProperties": {
                    "OnTrue": "LinkWidget",
                    "OnFalse": ""
                },
                "redirectLink": "/monitor/home"
            }
        ]
    },
    "cableTermination": {
        "displayName": "Cable Termination",
        "items": [
            {
                "customObject": {},
                "tagName": "CBL_TER_TEMP_PH_A",
                "tagNames": [
                    "CONNCTD_ASSET_PH_A"
                ],
                "className": "noCards connctedGisChild",
                "imageName": "icon-cable.svg",
                "unit": "",
                "displayName": "",
                "componentName": "ConditionalWidget",
                "conditionalProperties": {
                    "OnTrue": "LinkWidget",
                    "OnFalse": ""
                },
                "redirectLink": "/temp_and_humidity/termination"
            },
            {
                "customObject": {},
                "tagName": "CB_SF6_PURITY_POLE_C_OFF",
                "tagNames": [
                    "CONNCTD_ASSET_PH_B"
                ],
                "className": "noCards connctedGisChild",
                "imageName": "icon-cable.svg",
                "unit": "",
                "displayName": "",
                "componentName": "ConditionalWidget",
                "conditionalProperties": {
                    "OnTrue": "LinkWidget",
                    "OnFalse": ""
                },
                "redirectLink": "/temp_and_humidity/termination"
            },
            {
                "customObject": {},
                "tagName": "CBL_TER_TEMP_PH_C",
                "tagNames": [
                    "CONNCTD_ASSET_PH_C"
                ],
                "className": "noCards connctedGisChild",
                "imageName": "icon-cable.svg",
                "unit": "",
                "displayName": "",
                "componentName": "ConditionalWidget",
                "conditionalProperties": {
                    "OnTrue": "LinkWidget",
                    "OnFalse": ""
                },
                "redirectLink": "/temp_and_humidity/termination"
            }
        ]
    },
    "Labels": [
        {
            "label": "",
            "link": "",
            "data": [
                {
                    "MainHeading": "Health Summary",
                    "ScreenName": "health",
                    "Configured": "true",
                    "NoOfComponents": "4",
                    "MainComponentName": "health",
                    "redirectLink": "/system_dashboard",
                    "sideAlarm": "false",
                    "unit": "",
                    "order": "1",
                    "location": "left",
                    "className": "fourCol-Last50",
                    "model2Class": "dataListWrapper",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "HEALTH_INDEX",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "4",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "CRITICALITY_INDEX",
                            "className": "noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "5",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "RISK_INDEX",
                            "className": "noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "4",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "",
                            "className": "item50 noCards realTimeBarGraph",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "",
                            "sideAlarm": "",
                            "min": "",
                            "max": "",
                            "displayName": "",
                            "componentName": "RealtimeBarChart"
                        },
                        {
                            "tagName": "",
                            "className": "item100 noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "Coverage Rate",
                            "displayName": "Health Index",
                            "customObject": {
                                "unit": "%",
                                "infoMessage": "The coverage rate indicates the percentage of required parameters provided for calculating the Health Index (HI).A higher coverage rate improves the reliability of the HI calculation, while a lower coverage rate suggests that the result may be less accurate due to insufficient input data.",
                                "fontWeight": "bold",
                                "textAlign": "left",
                                "columns": [
                                    {
                                        "displayName": "Circuit Breaker HI",
                                        "propertyName": "circuit_breaker",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "PD HI",
                                        "propertyName": "partial_discharge",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "SF6 HI",
                                        "propertyName": "sf6",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "Cable Termination1 HI",
                                        "propertyName": "cable_termination1",
                                        "operationType": "displayValue"
                                    },
                                    {
                                        "displayName": "Cable Termination2 HI",
                                        "propertyName": "cable_termination2",
                                        "operationType": "displayValue"
                                    }
                                ]
                            },
                            "unit": "",
                            "isWidget": "",
                            "sideAlarm": "",
                            "min": "",
                            "max": "",
                            "componentName": "CoverageRate"
                        }
                    ]
                },
                {
                    "MainHeading": "Partial Discharge",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "",
                    "MainComponentName": "",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "2",
                    "ShowViewAll": "true",
                    "redirectLink": "/pdanalytics/pd/pdrealtime",
                    "showComponent": {
                        "tagName": "CBL_TER_TEMP_PH_%",
                        "className": "noCards summaryFourGuage",
                        "height": "",
                        "realTagsForWidget": [],
                        "width": "",
                        "alarmIds": [],
                        "tagNames": [
                            "CONNCTD_ASSET"
                        ],
                        "prefix": [
                            ""
                        ],
                        "heading": "Connected Cable",
                        "unit": "",
                        "imageName": "",
                        "likeTag": "",
                        "precedence": "DESC",
                        "isWidget": "false",
                        "sideAlarm": "false",
                        "min": "0",
                        "max": "100",
                        "subHeading": "Connected Cable",
                        "displayName": "",
                        "componentName": "ConditionalWidget",
                        "customObject": {
                            "fontWeight": "bold",
                            "textAlign": "left"
                        },
                        "conditionalProperties": {
                            "OnTrue": "LinkWidget",
                            "OnFalse": ""
                        },
                        "redirectLink": "/pdanalytics/pd/pdrealtime"
                    },
                    "model2Class": "dataTableWrapper",
                    "location": "right",
                    "className": "twoCol-row",
                    "heading": " ",
                    "subHeading": "Fault Type",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "PD_S%_MAX_AMP",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "PD_S%_MAX_DR"
                            ],
                            "alarmTag": "PD_S%_EVENT_COUNT_CAL",
                            "heading": "",
                            "precedence": "DESC",
                            "top": 1,
                            "unit": "",
                            "prefix": [
                                ""
                            ],
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "90",
                            "displayName": "PD_S%_STATUS",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PdSingleAlarmPrecedenceWidget"
                        },
                        {
                            "tagName": "PD_S%_MAX_AMP",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "PD_S%_MAX_DR"
                            ],
                            "alarmTag": "PD_S%_EVENT_COUNT_CAL",
                            "heading": "",
                            "precedence": "DESC",
                            "top": 2,
                            "unit": "",
                            "prefix": [
                                ""
                            ],
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "90",
                            "displayName": "PD_S%_STATUS",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PdSingleAlarmPrecedenceWidget"
                        },
                        {
                            "tagName": "PD_S%_MAX_AMP",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "PD_S%_MAX_DR"
                            ],
                            "alarmTag": "PD_S%_EVENT_COUNT_CAL",
                            "heading": "",
                            "precedence": "DESC",
                            "top": 3,
                            "unit": "",
                            "prefix": [
                                ""
                            ],
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "90",
                            "displayName": "PD_S%_STATUS",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PdSingleAlarmPrecedenceWidget"
                        },
                        {
                            "tagName": "PD_S%_LEVEL",
                            "precedence": "DESC",
                            "prefix": [
                                ""
                            ],
                            "className": "textWidget noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "Recommendation",
                            "unit": "",
                            "customObject": {
                                "bgColor": "#fff7d1 "
                            },
                            "isDga": false,
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "100",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "displayName": "",
                            "componentName": "TextWidget"
                        }
                    ]
                },
                {
                    "MainHeading": "Circuit Breaker",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "7",
                    "MainComponentName": "circuit_breaker",
                    "redirectLink": "/event_analysis",
                    "sideAlarm": "",
                    "unit": "",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row",
                    "location": "left",
                    "order": "3",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "",
                    "components": [
                        {
                            "height": "",
                            "width": "",
                            "className": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "subHeading": "Breaker Status",
                            "unit": "",
                            "sideAlarm": "",
                            "displayName": "",
                            "tagName": "CB_STATUS",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "componentName": "CircuitBreaker",
                            "imageName": "cb"
                        },
                        {
                            "tagName": "CB_CNT_WEAR_CUMM",
                            "className": "cbContact",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTrends": "true",
                            "ShowThresholds": "true",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "center"
                            },
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "CB_STATUS",
                            "className": "CBRespFull",
                            "height": "",
                            "width": "",
                            "calculateTime": "true",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "showLife": "false",
                            "ShowTagType": true,
                            "valueSize": 4,
                            "isWidthFull": "true",
                            "sideAlarm": "false",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "center"
                            },
                            "displayName": "Time Since Last Operation",
                            "componentName": "TapCount"
                        },
                        {
                            "tagName": "CB_OPT_COUNT_TOTAL",
                            "className": "CBRespFull",
                            "height": "",
                            "width": "",
                            "calculateTime": "false",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "showLife": "false",
                            "ShowTagType": true,
                            "valueSize": 4,
                            "isWidthFull": "true",
                            "sideAlarm": "true",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "center"
                            },
                            "displayName": "Total No. of Breaker Operation",
                            "componentName": "TapCount"
                        },
                        {
                            "tagName": "CB_OPEN_TIME_POLE_%",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "",
                            "unit": "",
                            "prefix": [],
                            "precedence": "DESC",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "60",
                            "color": {
                                "greenRange": 20,
                                "amberRange": 25,
                                "redRange": 55
                            },
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "componentName": "PrecedenceRangeSlider"
                        },
                        {
                            "tagName": "CB_CLOSE_TIME_POLE_%",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "",
                            "unit": "",
                            "prefix": [],
                            "precedence": "DESC",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "100",
                            "color": {
                                "greenRange": 20,
                                "amberRange": 25,
                                "redRange": 55
                            },
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "componentName": "PrecedenceRangeSlider"
                        },
                        {
                            "tagName": "CB_MECH_RECHRG_TIME_POLE_%",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "",
                            "unit": "",
                            "prefix": [],
                            "precedence": "DESC",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "25",
                            "customObject": {
                                "fontWeight": "normal",
                                "textAlign": "center"
                            },
                            "color": {
                                "greenRange": 20,
                                "amberRange": 25,
                                "redRange": 55
                            },
                            "displayName": "",
                            "componentName": "PrecedenceRangeSlider"
                        }
                    ]
                },
                {
                    "MainHeading": "SF6 Status(At Highest Risk)",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "4",
                    "MainComponentName": "",
                    "ShowViewAll": "true",
                    "redirectLink": "/sf6",
                    "sideAlarm": "",
                    "unit": "",
                    "model2Class": "dataListWrapper",
                    "location": "right",
                    "order": "5",
                    "className": "fiveCol-row productAlign",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "",
                    "components": [
                        {
                            "tagName": "",
                            "height": "",
                            "width": "",
                            "prefix": [
                                "%CH%_SF6_LR",
                                "CH%_SF6_LR"
                            ],
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "top": "1",
                            "precedence": "ASC",
                            "likeTag": "",
                            "unit": "",
                            "min": "-10",
                            "max": "10",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "displayName": "",
                            "customObject": {
                                "isSplitLineShow": true,
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PrecedenceGauge"
                        },
                        {
                            "tagName": "",
                            "height": "",
                            "width": "",
                            "prefix": [
                                "%CH%_SF6_PRESS",
                                "CH%_SF6_PRESS"
                            ],
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "color": [
                                [
                                    0.6,
                                    "#FF0000"
                                ],
                                [
                                    0.7,
                                    "#FF9500"
                                ],
                                [
                                    1,
                                    "#25D366"
                                ]
                            ],
                            "precedence": "ASC",
                            "top": "1",
                            "likeTag": "",
                            "unit": "",
                            "min": "0",
                            "max": "9",
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "displayName": "",
                            "componentName": "PrecedenceGauge"
                        },
                        {
                            "tagName": "",
                            "height": "",
                            "width": "",
                            "precedence": "ASC",
                            "prefix": [
                                "%CH%_SF6_TL",
                                "CH%_SF6_TL"
                            ],
                            "alarmIds": [],
                            "tagNames": [],
                            "calculateTime": "false",
                            "heading": "",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "showLife": "false",
                            "valueSize": 4,
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PrecedenceCounter"
                        },
                        {
                            "tagName": "",
                            "height": "",
                            "width": "",
                            "calculateTime": "false",
                            "prefix": [
                                "%_CH%_SF6_RT",
                                "CH%_SF6_RT"
                            ],
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "precedence": "ASC",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "showLife": "false",
                            "valueSize": 4,
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PrecedenceCounter"
                        }
                    ]
                },
                {
                    "MainHeading": "Temperature & Humidity",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "4",
                    "MainComponentName": "",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "6",
                    "ShowViewAll": "false",
                    "redirectLink": "",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row cardWrap",
                    "location": "right",
                    "heading": " ",
                    "subHeading": " ",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "AMB_TEMP",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "subHeading": "Deg C",
                            "displayName": "Ambient",
                            "imageName": "tempIcon.gif",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimeGaugeWidget"
                        },
                        {
                            "tagName": "AMB_HUMIDITY",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "displayName": "Ambient",
                            "imageName": "humidity.png",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimeGaugeWidget"
                        }
                    ]
                },
                {
                    "MainHeading": "Cable Termination",
                    "ScreenName": "",
                    "Configured": "true",
                    "NoOfComponents": "3",
                    "MainComponentName": "",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "7",
                    "ShowViewAll": "false",
                    "redirectLink": "/termination_chamber/vital",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row cardWrap",
                    "location": "right",
                    "heading": " ",
                    "subHeading": " ",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "CBL_TER_TEMP_PH_A",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "CONNCTD_ASSET_PH_A"
                            ],
                            "prefix": [
                                ""
                            ],
                            "heading": "Connected Cable R",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "100",
                            "subHeading": "Max Cable Termination Temp.",
                            "displayName": "",
                            "imageName": "icon-cable.svg",
                            "componentName": "ConditionalWidget",
                            "conditionalProperties": {
                                "OnTrue": "LinkWidget",
                                "OnFalse": ""
                            },
                            "redirectLink": "/temp_and_humidity/termination"
                        },
                        {
                            "tagName": "CBL_TER_TEMP_PH_B",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "CONNCTD_ASSET_PH_B"
                            ],
                            "prefix": [
                                ""
                            ],
                            "heading": "Connected Cable Y",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "100",
                            "subHeading": "Max Cable Termination Temp.",
                            "displayName": "",
                            "imageName": "icon-cable.svg",
                            "componentName": "ConditionalWidget",
                            "conditionalProperties": {
                                "OnTrue": "LinkWidget",
                                "OnFalse": ""
                            },
                            "redirectLink": "/temp_and_humidity/termination"
                        },
                        {
                            "tagName": "CBL_TER_TEMP_PH_C",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "CONNCTD_ASSET_PH_C"
                            ],
                            "prefix": [
                                ""
                            ],
                            "heading": "Connected Cable B",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "100",
                            "subHeading": "Max Cable Termination Temp.",
                            "displayName": "",
                            "imageName": "icon-cable.svg",
                            "componentName": "ConditionalWidget",
                            "conditionalProperties": {
                                "OnTrue": "LinkWidget",
                                "OnFalse": ""
                            },
                            "redirectLink": "/temp_and_humidity/termination"
                        }
                    ]
                }
            ]
        }
    ]
}'
WHERE json_type=0 and asset_type_name='hv_gis_bay' and asset_id=0;
;

UPDATE public.version SET version = 1330 WHERE type = 'db_version';

--Customer id = 1
-- shibani
--updated query for pdrealtime uom type

update  all_jsons  SET json ='{
      "tabs": {
        "Average": { "label": "Average", "index": 0,"keyId":"AVERAGE" },
        "Max": { "label": "Max", "index": 1 ,"keyId":"MAX"}
      },
      "customColumns": [
        {
          "propertyName": "SensorName",
          "displayName": "Sensorss",
          "operationType": "displayValue",
		  "keyId":"SENSORS"
        },
        {
          "propertyName": "maxAmplitude",
          "displayName": "Max Value",
          "operationType": "maxamplitude",
		  "keyId":"MAX_AMPLITUDE"
        },
        {
          "propertyName": "avgAmplitude",
          "displayName": "Average Amplitude",
          "operationType": "avgamplitude",
		  "keyId":"AVG_AMPLITUDE"
        },
        {
          "propertyName": "dischargeRate",
          "displayName": "Discharge Rate",
          "operationType": "dischargerate",
		  "keyId":"DISCHARGE_RATE"
        },
        {
          "propertyName": "avgDischargeRate",
          "displayName": "Average Discharge Rate",
          "operationType": "avgdischargerate",
		  "keyId":"AVG_DISCHARGE_RATE"
        },
        {
          "propertyName": "pdStatus",
          "displayName": "PD Status",
          "operationType": "pdstatus",
		  "keyId":"PD_STATUS"
        },
        {
          "propertyName": "action",
          "displayName": "Action",
          "operationType": "button",
          "buttonAction": {
            "type": "addStatus",
            "label": "Add Status",
            "action": "openPopup"
          },
		  "keyId":"ADD_STATUS"
        },
        {
          "propertyName": "legend",
          "displayName": " ",
          "operationType": "tooltip",
         "tooltipFields": [
            {
              "key": "threshold",
              "keyId": "resource.motor.pdanalytics.pd.pdrealtime.THRESHOLD_=",
              "unit": "mV"
            },
            {
              "key": "gain",
              "keyId": "resource.motor.pdanalytics.pd.pdrealtime.GAIN_=",
              "unit": "dB"
            },
            {
              "key": "phase_shift",
              "keyId": "resource.motor.pdanalytics.pd.pdrealtime.PHASE_SHIFT_=",
              "unit": "°"
            }
          ]
        }
      ]
    }'



where json_type=39 and asset_type_name='pdrealtime';
;

UPDATE public.version SET version = 1334 WHERE type = 'db_version';

--Customer id = 1
-- Anchal Singh
--EMS-15881 updated json of motor for unbalanced widget

UPDATE public.all_jsons
SET  json='{
    "FixedNameplateTags": [
        {
            "tagName": "ASSET_TAG_DESCRIPT",
            "directionRight": false
        },
        {
            "tagName": "MAKE",
            "directionRight": false
        },
        {
            "tagName": "COMM_DATE",
            "directionRight": false
        },
        {
            "tagName": "MVA_RATING",
            "directionRight": false
        },
        {
            "tagName": "ASSET_CATG",
            "directionRight": false
        },
        {
            "tagName": "RATED_VOLT",
            "directionRight": false
        },
        {
            "tagName": "MC_TYPE",
            "directionRight": false
        },
        {
            "tagName": "MC_POLES",
            "directionRight": false
        },
        {
            "tagName": "MC_TH_INS_CLASS",
            "directionRight": false
        },
        {
            "tagName": "MFG_SITE",
            "directionRight": true
        },
        {
            "tagName": "BUSS_ZONES",
            "directionRight": true
        },
        {
            "tagName": "PLANT_AREA",
            "directionRight": true
        },
        {
            "tagName": "INSTAL_PHASE",
            "directionRight": true
        },
        {
            "tagName": "PLANT_NAME",
            "directionRight": true
        },
        {
            "tagName": "SUB_PROCESS_NAME",
            "directionRight": true
        },
        {
            "tagName": "SUBSTATION",
            "directionRight": true
        },
        {
            "tagName": "CONN_SW_BOARD",
            "directionRight": true
        },
        {
            "tagName": "MAP_LAT",
            "directionRight": true
        },
        {
            "tagName": "MAP_LONG",
            "directionRight": true
        }
    ],
    "SummaryModel": "model1",
    "ShowAlarm": true,
    "LoadData": [
        {
            "tagName": "MW_RATING",
            "directionRight": false,
            "displayName": "Motor Power",
            "componentName": "NameValueButton"
        },
        {
            "tagName": "CURR_PH_B",
            "directionRight": false,
            "displayName": "Current",
            "componentName": "NameValueButton"
        },
        {
            "tagName": "VOLT_PH_B",
            "directionRight": false,
            "displayName": "Voltage",
            "componentName": "NameValueButton"
        },
        {
            "tagName": "LOAD_RATIO",
            "directionRight": true,
            "displayName": "Load %",
            "componentName": "NameValueButton"
        },
        {
            "tagName": "PF",
            "directionRight": true,
            "displayName": "",
            "componentName": "NameValueButton"
        },
        {
            "tagName": "THD",
            "directionRight": true,
            "displayName": "",
            "componentName": "NameValueButton"
        }
    ],
    "Recommendation": [
        {
            "customObject": {
                "bgColor": "#fff7d1 "
            },
            "componentName": "RecommendationWidget"
        }
    ],
    "Labels": [
        {
            "label": "",
            "link": "",
            "data": [
                {
                    "MainHeading": "Health Summary",
                    "ScreenName": "health",
                    "Configured": "true",
                    "NoOfComponents": "4",
                    "MainComponentName": "health",
                    "redirectLink": "/system_dashboard",
                    "sideAlarm": "false",
                    "unit": "",
                    "order": "1",
                    "location": "left",
                    "className": "fourCol-Last50",
                    "model2Class": "dataListWrapper",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "HEALTH_INDEX",
                            "className": "noCards",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "4",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "CRITICALITY_INDEX",
                            "className": "noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "5",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "RISK_INDEX",
                            "className": "noCards",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "4",
                            "displayName": "",
                            "componentName": "RealtimeGauge"
                        },
                        {
                            "tagName": "",
                            "className": "item50 noCards realTimeBarGraph",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "",
                            "sideAlarm": "",
                            "min": "",
                            "max": "",
                            "displayName": "",
                            "componentName": "RealtimeBarChart"
                        }
                    ]
                },
                {
                    "MainHeading": "Motor Status",
                    "ScreenName": "CSA Analytics",
                    "Configured": "true",
                    "NoOfComponents": "9",
                    "MainComponentName": "generator_csa",
                    "ShowViewAll": "false",
                    "ShowTrends": "false",
                    "redirectLink": "/vital",
                    "sideAlarm": "false",
                    "unit": "",
                    "tagName": "",
                    "trendTagNames": [
                        "RUN_HRS_PER_DAY"
                    ],
                    "showImage": "fan",
                    "location": "right",
                    "order": "2",
                    "model2Class": "dataTableWrapper",
                    "className": "fourCol-row cardWrap",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "NameWithValue",
                    "components": [
                        {
                            "tagName": "EQUIP_RUN_STATUS",
                            "className": "",
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "Running Status",
                            "subHeading": "Alarm Status",
                            "unit": "",
                            "min": "0",
                            "max": "100",
                            "sideAlarm": "false",
                            "displayName": "",
                            "ShowTagType": true,
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "MotorFan"
                        },
                        {
                            "tagName": "PF_CSA",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "15",
                            "ShowTrends": "true",
                            "ShowThresholds": "true",
                            "startAngle": 90,
                            "endAngle": 450,
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "100",
                            "displayName": "Power Factor",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimeGaugeV2"
                        },
                        {
                            "tagName": "",
                            "tagNames": [
                                "VOLT_BALANCE",
                                "CURR_BALANCE"
                            ],
                            "heading": "Unbalance",
                            "precedence": "DESC",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "60",
                            "displayName": "CURR_BALANCE",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "CommonChart"
                        },
                        {
                            "tagName": "TOTAL_RUN_HRS_CSA",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "min": "0",
                            "max": "60",
                            "subHeading": "",
                            "displayName": "Total Running Hours",
                            "imageName": "hours_icon.png",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "CustomTextTapCount"
                        },
                        {
                            "tagName": "SIGNAL_FREQ",
                            "className": "textLeft",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "60",
                            "subHeading": "",
                            "displayName": "Frequency",
                            "imageName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimeGaugeWidget"
                        },
                        {
                            "tagName": "ACTIVE_POWER_CSA",
                            "className": "textLeft textFull",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "60",
                            "subHeading": "",
                            "displayName": "Active Power",
                            "imageName": "",
                            "precision": 2,
                            "overallPrecision": 10,
                            "lowerExp": -8,
                            "upperExp": 10,
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimeGaugeWidget"
                        }
                    ]
                },
                {
                    "MainHeading": "Partial Discharge",
                    "ScreenName": "PD Analytics",
                    "Configured": "true",
                    "NoOfComponents": "",
                    "MainComponentName": "pdanalytics",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "4",
                    "ShowViewAll": "true",
                    "showComponent": {
                        "displayName": "PD Diagnostic Guide ",
                        "redirectLink": "../../../../assets/pd_docs/PD_Diagnostic_Guide_Rotating_Machines.pdf",
                        "componentName": "PdPdflinkComponent"
                    },
                    "redirectLink": "/pd/pdrealtime",
                    "model2Class": "dataTableWrapper",
                    "location": "right",
                    "className": "twoCol-row",
                    "heading": " ",
                    "subHeading": "Fault Type",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "PD_S%_LEVEL",
                            "precedence": "DESC",
                            "prefix": [
                                ""
                            ],
                            "className": "item25",
                            "height": "",
                            "realTagsForWidget": [],
                            "alarmIds": [],
                            "heading": "PD Status",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "ShowTrendRoC": false,
                            "displayName": "",
                            "ShowTrends": "true",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "trendTagNames": [
                                "PD_LEVEL_MAX"
                            ],
                            "componentName": "OnlyTextWidget"
                        },
                        {
                            "tagName": "PD_S%_LEVEL",
                            "precedence": "DESC",
                            "prefix": [
                                ""
                            ],
                            "className": "textWidget noCards item75",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "Recommendation",
                            "unit": "",
                            "customObject": {
                                "bgColor": "#fff7d1 ",
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "isDga": false,
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "max": "100",
                            "displayName": "",
                            "componentName": "TextWidget"
                        },
                        {
                            "tagName": "PD_S%_MAX_AMP",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "PD_S%_MAX_DR"
                            ],
                            "alarmTag": "PD_S%_EVENT_COUNT_CAL",
                            "heading": "",
                            "precedence": "DESC",
                            "top": 1,
                            "unit": "",
                            "prefix": [
                                ""
                            ],
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "90",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "displayName": "PD_S%_STATUS",
                            "componentName": "PdSingleAlarmPrecedenceWidget"
                        },
                        {
                            "tagName": "PD_S%_MAX_AMP",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "PD_S%_MAX_DR"
                            ],
                            "alarmTag": "PD_S%_EVENT_COUNT_CAL",
                            "heading": "",
                            "unit": "",
                            "prefix": [
                                ""
                            ],
                            "precedence": "DESC",
                            "top": 2,
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "90",
                            "displayName": "PD_S%_STATUS",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PdSingleAlarmPrecedenceWidget"
                        },
                        {
                            "tagName": "PD_S%_MAX_AMP",
                            "className": "",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [
                                "PD_S%_MAX_DR"
                            ],
                            "alarmTag": "PD_S%_EVENT_COUNT_CAL",
                            "heading": "",
                            "unit": "",
                            "prefix": [
                                ""
                            ],
                            "precedence": "DESC",
                            "top": 3,
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "90",
                            "displayName": "PD_S%_STATUS",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "PdSingleAlarmPrecedenceWidget"
                        }
                    ]
                },
                {
                    "MainHeading": "Current Signature Analytics",
                    "ScreenName": "CSA Analytics",
                    "Configured": "true",
                    "NoOfComponents": "2",
                    "MainComponentName": "csa",
                    "redirectLink": "/vital",
                    "sideAlarm": "false",
                    "unit": "",
                    "order": "3",
                    "location": "left",
                    "model2Class": "dataTableWrapper",
                    "className": "fourCol-row csaBlock",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "csa",
                    "components": [
                        {
                            "tagName": "EQUIP_STATUS",
                            "className": "item25",
                            "height": "",
                            "realTagsForWidget": [],
                            "alarmIds": [],
                            "heading": "Motor Status",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "true",
                            "ShowTagType": true,
                            "ShowTrendRoC": false,
                            "displayName": "",
                            "ShowTrends": "true",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "OnlyTextWidget"
                        },
                        {
                            "tagName": "EQUIP_STATUS",
                            "className": "textWidget noCards item75",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "Status Result",
                            "unit": "",
                            "customObject": {
                                "bgColor": "#fff7d1",
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "min": "0",
                            "isDga": false,
                            "max": "100",
                            "displayName": "",
                            "componentName": "TextWidget"
                        },
                        {
                            "tagName": "",
                            "className": "noCSACards item100full",
                            "realTagsForWidget": [],
                            "height": "",
                            "width": "",
                            "alarmIds": [],
                            "heading": "",
                            "unit": "",
                            "customObject": {
                                "bgColor": "#fff7d1 ",
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "isWidget": "",
                            "sideAlarm": "",
                            "min": "",
                            "max": "",
                            "displayName": "%",
                            "componentName": "CSAFault"
                        }
                    ]
                },
                {
                    "MainHeading": "Temperature",
                    "ScreenName": "Temperature Analytics",
                    "Configured": "true",
                    "NoOfComponents": "5",
                    "MainComponentName": "temperature_analytics",
                    "sideAlarm": "",
                    "unit": "",
                    "order": "5",
                    "ShowViewAll": "true",
                    "redirectLink": "/temperature-summary",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row cardWrap",
                    "location": "right",
                    "heading": " ",
                    "subHeading": " ",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "AMB_TEMP",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "",
                            "unit": "",
                            "likeTag": "",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "70",
                            "subHeading": "Deg C",
                            "displayName": "Ambient",
                            "imageName": "tempIcon.gif",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimeGaugeWidget"
                        },
                        {
                            "tagName": "STR_PH%_RTD%",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max Stator Winding",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "120",
                            "subHeading": "",
                            "displayName": "",
                            "imageName": "tempIcon.gif",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        },
                        {
                            "tagName": "BEARING%_TEMP",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max Bearing",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "120",
                            "subHeading": "Deg C",
                            "displayName": "",
                            "imageName": "tempIcon.gif",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        }
                    ]
                },
                {
                    "MainHeading": "Vibration",
                    "ScreenName": "Vibration Analytics",
                    "Configured": "true",
                    "NoOfComponents": "3",
                    "MainComponentName": "vibration",
                    "redirectLink": "/summary",
                    "sideAlarm": "",
                    "unit": "",
                    "model2Class": "dataListWrapper",
                    "className": "fourCol-row cardWrap",
                    "location": "left",
                    "order": "6",
                    "heading": "",
                    "subHeading": "",
                    "componentName": "Gauge",
                    "components": [
                        {
                            "tagName": "VBM%_RMS_VEL",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max of rms Velocity",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "120",
                            "subHeading": "",
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "imageName": "",
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        },
                        {
                            "tagName": "VBM%_RMS_ACC",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max of rms Acceleration",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "120",
                            "subHeading": "",
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "imageName": "",
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        },
                        {
                            "tagName": "VBM%_RMS_DISP",
                            "className": "",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "",
                            "alarmIds": [],
                            "tagNames": [],
                            "prefix": [
                                ""
                            ],
                            "heading": "Max of rms Displacement",
                            "unit": "",
                            "likeTag": "",
                            "precedence": "DESC",
                            "isWidget": "false",
                            "sideAlarm": "false",
                            "ShowTagType": true,
                            "ShowTrendRoC": true,
                            "min": "0",
                            "max": "120",
                            "subHeading": "",
                            "displayName": "",
                            "customObject": {
                                "fontWeight": "bold",
                                "textAlign": "left"
                            },
                            "imageName": "",
                            "componentName": "RealtimePrecedenceGaugeWidget"
                        }
                    ]
                }
            ]
        }
    ]
} '
WHERE asset_type_name='motor' and json_type=0 and asset_id=0;
;

UPDATE public.version SET version = 1335 WHERE type = 'db_version';

--Customer id = 1
-- Anchal Singh
--EMS-15881 updated json of generator for unbalanced widget

UPDATE public.all_jsons
SET  json='{
  "Labels": [
    {
      "data": [
        {
          "unit": "",
          "order": "1",
          "heading": "",
          "location": "left",
          "className": "fourCol-Last50",
          "sideAlarm": "false",
          "Configured": "true",
          "ScreenName": "health",
          "components": [
            {
              "max": "4",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "",
              "tagName": "HEALTH_INDEX",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "noCards",
              "sideAlarm": "false",
              "displayName": "",
              "componentName": "RealtimeGauge",
              "realTagsForWidget": []
            },
            {
              "max": "5",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "",
              "tagName": "CRITICALITY_INDEX",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "noCards",
              "sideAlarm": "false",
              "displayName": "",
              "componentName": "RealtimeGauge",
              "realTagsForWidget": []
            },
            {
              "max": "4",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "",
              "tagName": "RISK_INDEX",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "noCards",
              "sideAlarm": "false",
              "displayName": "",
              "componentName": "RealtimeGauge",
              "realTagsForWidget": []
            },
            {
              "max": "",
              "min": "",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "",
              "tagName": "",
              "alarmIds": [],
              "isWidget": "",
              "tagNames": [],
              "className": "item50 noCards realTimeBarGraph",
              "sideAlarm": "",
              "displayName": "",
              "componentName": "RealtimeBarChart",
              "realTagsForWidget": []
            },
            {
              "max": "",
              "min": "",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "Coverage Rate",
              "tagName": "",
              "alarmIds": [],
              "isWidget": "",
              "tagNames": [],
              "className": "item100 noCards",
              "sideAlarm": "",
              "displayName": "Health Index",
              "customObject": {
                "unit": "%",
                "columns": [
                  {
                    "displayName": "Stator HI",
                    "propertyName": "stator",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "Rotor HI",
                    "propertyName": "rotor",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "Sensor Testing HI",
                    "propertyName": "sensor_testing",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "Vibration Analytics HI",
                    "propertyName": "vibration_analytics",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "Temperature HI",
                    "propertyName": "temperature",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "CSA HI",
                    "propertyName": "csa",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "PD Analytics HI",
                    "propertyName": "pd_analytics",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "Ageing HI",
                    "propertyName": "aging",
                    "operationType": "displayValue"
                  },
                  {
                    "displayName": "Flux HI",
                    "propertyName": "flux",
                    "operationType": "displayValue"
                  }
                ],
                "textAlign": "left",
                "fontWeight": "bold",
                "infoMessage": "The coverage rate indicates the percentage of required parameters provided for calculating the Health Index (HI).A higher coverage rate improves the reliability of the HI calculation, while a lower coverage rate suggests that the result may be less accurate due to insufficient input data."
              },
              "componentName": "CoverageRate",
              "realTagsForWidget": []
            }
          ],
          "subHeading": "",
          "MainHeading": "Health Summary",
          "model2Class": "dataListWrapper",
          "redirectLink": "/system_dashboard",
          "componentName": "Gauge",
          "NoOfComponents": "4",
          "MainComponentName": "health"
        },
        {
          "unit": "",
          "order": "2",
          "heading": "",
          "tagName": "",
          "location": "right",
          "className": "fourCol-row cardWrap",
          "showImage": "fan",
          "sideAlarm": "false",
          "Configured": "true",
          "ScreenName": "CSA Analytics",
          "ShowTrends": "false",
          "components": [
            {
              "max": "100",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "Running Status",
              "tagName": "EQUIP_RUN_STATUS",
              "alarmIds": [],
              "tagNames": [],
              "className": "",
              "sideAlarm": "false",
              "subHeading": "Alarm Status",
              "ShowTagType": true,
              "displayName": "",
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "MotorFan"
            },
            {
              "max": "100",
              "min": "0",
              "unit": "",
              "width": "15",
              "height": "",
              "heading": "",
              "tagName": "PF_CSA",
              "alarmIds": [],
              "endAngle": 450,
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "sideAlarm": "false",
              "ShowTrends": "true",
              "startAngle": 90,
              "ShowTagType": true,
              "displayName": "Power Factor",
              "ShowTrendRoC": true,
              "componentName": "RealtimeGaugeV2",
              "ShowThresholds": "true",
              "realTagsForWidget": []
            },
            {
              "heading": "Unbalance",
              "precedence": "DESC",
              "likeTag": "",
              "tagName": "",
              "isWidget": "false",
              "tagNames": [
                "VOLT_BALANCE",
                "CURR_BALANCE"
              ],
              "sideAlarm": "false",
              "ShowTagType": true,
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "CommonChart"
            },
            {
              "max": "60",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "likeTag": "",
              "tagName": "TOTAL_RUN_HRS_CSA",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "hours_icon.png",
              "sideAlarm": "false",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "Total Running Hours",
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "CustomTextTapCount",
              "realTagsForWidget": []
            },
            {
              "max": "60",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "likeTag": "",
              "tagName": "SIGNAL_FREQ",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "textLeft",
              "imageName": "",
              "sideAlarm": "false",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "Frequency",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimeGaugeWidget",
              "realTagsForWidget": []
            },
            {
              "max": "60",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "likeTag": "",
              "tagName": "ACTIVE_POWER_CSA",
              "alarmIds": [],
              "isWidget": "false",
              "lowerExp": -8,
              "tagNames": [],
              "upperExp": 10,
              "className": "textLeft textFull",
              "imageName": "",
              "precision": 2,
              "sideAlarm": "false",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "Active Power",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimeGaugeWidget",
              "overallPrecision": 10,
              "realTagsForWidget": []
            }
          ],
          "subHeading": "",
          "MainHeading": "Generator Status",
          "ShowViewAll": "false",
          "model2Class": "dataTableWrapper",
          "redirectLink": "/vital",
          "componentName": "NameWithValue",
          "trendTagNames": [
            "RUN_HRS_PER_DAY"
          ],
          "NoOfComponents": "9",
          "MainComponentName": "csa"
        },
        {
          "unit": "",
          "order": "4",
          "heading": "",
          "location": "left",
          "className": "fourCol-row csaBlock",
          "sideAlarm": "false",
          "Configured": "true",
          "ScreenName": "CSA Analytics",
          "components": [
            {
              "unit": "",
              "height": "",
              "heading": "Generator Status ",
              "tagName": "EQUIP_STATUS",
              "alarmIds": [],
              "isWidget": "false",
              "className": "item25",
              "sideAlarm": "true",
              "ShowTrends": "true",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": false,
              "componentName": "OnlyTextWidget",
              "realTagsForWidget": []
            },
            {
              "max": "100",
              "min": "0",
              "unit": "",
              "isDga": false,
              "width": "",
              "height": "",
              "heading": "Status Result",
              "tagName": "EQUIP_STATUS",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "textWidget noCards item75",
              "sideAlarm": "false",
              "displayName": "",
              "customObject": {
                "bgColor": "#fff7d1 ",
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "TextWidget",
              "realTagsForWidget": []
            },
            {
              "max": "",
              "min": "",
              "unit": "",
              "width": "",
              "height": "",
              "heading": "",
              "tagName": "",
              "alarmIds": [],
              "isWidget": "",
              "className": "noCSACards item100full",
              "sideAlarm": "",
              "displayName": "%",
              "customObject": {
                "bgColor": "#fff7d1 ",
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "CSAFault",
              "realTagsForWidget": []
            }
          ],
          "subHeading": "",
          "MainHeading": "Current Signature Analytics",
          "model2Class": "dataTableWrapper",
          "redirectLink": "/vital",
          "componentName": "csa",
          "NoOfComponents": "2",
          "MainComponentName": "csa"
        },
        {
          "unit": "",
          "order": "3",
          "heading": " ",
          "location": "right",
          "className": "twoCol-row",
          "sideAlarm": "",
          "Configured": "true",
          "ScreenName": "PD Analytics",
          "components": [
            {
              "unit": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "PD Status",
              "tagName": "PD_S%_LEVEL",
              "alarmIds": [],
              "isWidget": "false",
              "className": "item25",
              "sideAlarm": "true",
              "ShowTrends": "true",
              "precedence": "DESC",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": false,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "OnlyTextWidget",
              "trendTagNames": [
                "PD_LEVEL_MAX"
              ],
              "realTagsForWidget": []
            },
            {
              "max": "100",
              "min": "0",
              "unit": "",
              "isDga": false,
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Recommendation",
              "tagName": "PD_S%_LEVEL",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "textWidget noCards item75",
              "sideAlarm": "false",
              "precedence": "DESC",
              "displayName": "",
              "customObject": {
                "bgColor": "#fff7d1 ",
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "TextWidget",
              "realTagsForWidget": []
            },
            {
              "max": "90",
              "min": "0",
              "top": 1,
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "tagName": "PD_S%_MAX_AMP",
              "alarmIds": [],
              "alarmTag": "PD_S%_EVENT_COUNT_CAL",
              "isWidget": "false",
              "tagNames": [
                "PD_S%_MAX_DR"
              ],
              "className": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "ShowTagType": true,
              "displayName": "PD_S%_STATUS",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "PdSingleAlarmPrecedenceWidget",
              "realTagsForWidget": []
            },
            {
              "max": "90",
              "min": "0",
              "top": 2,
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "tagName": "PD_S%_MAX_AMP",
              "alarmIds": [],
              "alarmTag": "PD_S%_EVENT_COUNT_CAL",
              "isWidget": "false",
              "tagNames": [
                "PD_S%_MAX_DR"
              ],
              "className": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "ShowTagType": true,
              "displayName": "PD_S%_STATUS",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "PdSingleAlarmPrecedenceWidget",
              "realTagsForWidget": []
            },
            {
              "max": "90",
              "min": "0",
              "top": 3,
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "tagName": "PD_S%_MAX_AMP",
              "alarmIds": [],
              "alarmTag": "PD_S%_EVENT_COUNT_CAL",
              "isWidget": "false",
              "tagNames": [
                "PD_S%_MAX_DR"
              ],
              "className": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "ShowTagType": true,
              "displayName": "PD_S%_STATUS",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "PdSingleAlarmPrecedenceWidget",
              "realTagsForWidget": []
            }
          ],
          "subHeading": "Fault Type",
          "MainHeading": "Partial Discharge",
          "ShowViewAll": "true",
          "model2Class": "dataTableWrapper",
          "redirectLink": "/pd/pdrealtime",
          "componentName": "Gauge",
          "showComponent": {
            "displayName": "PD Diagnostic Guide ",
            "redirectLink": "../../../../assets/pd_docs/PD_Diagnostic_Guide_Rotating_Machines.pdf",
            "componentName": "PdPdflinkComponent"
          },
          "NoOfComponents": "4",
          "MainComponentName": "pdanalytics"
        },
        {
          "unit": "",
          "order": "5",
          "heading": " ",
          "location": "right",
          "className": "fourCol-row cardWrap",
          "sideAlarm": "",
          "Configured": "true",
          "ScreenName": "Temperature Analytics",
          "components": [
            {
              "max": "60",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "",
              "likeTag": "",
              "tagName": "AMB_TEMP",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "tempIcon.gif",
              "sideAlarm": "false",
              "subHeading": "Deg C",
              "ShowTagType": true,
              "displayName": "Ambient",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimeGaugeWidget",
              "realTagsForWidget": []
            },
            {
              "max": "190",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Max Stator Winding",
              "likeTag": "",
              "tagName": "STR_PH%_RTD%",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "tempIcon.gif",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            },
            {
              "max": "120",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Max Bearing",
              "likeTag": "",
              "tagName": "BEARING%_TEMP",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "tempIcon.gif",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "Deg C",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            }
          ],
          "subHeading": " ",
          "MainHeading": "Temperature",
          "ShowViewAll": "true",
          "model2Class": "dataListWrapper",
          "redirectLink": "/temperature-summary",
          "componentName": "Gauge",
          "NoOfComponents": "5",
          "MainComponentName": "temperature_analytics"
        },
        {
          "unit": "",
          "order": "6",
          "heading": "",
          "location": "left",
          "className": "fourCol-row cardWrap",
          "sideAlarm": "",
          "Configured": "true",
          "ScreenName": "Vibration Analytics",
          "components": [
            {
              "max": "120",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Max of rms Velocity",
              "likeTag": "",
              "tagName": "VBM%_RMS_VEL",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            },
            {
              "max": "120",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Max of rms Acceleration",
              "likeTag": "",
              "tagName": "VBM%_RMS_ACC",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            },
            {
              "max": "120",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Max of rms Displacement",
              "likeTag": "",
              "tagName": "VBM%_RMS_DISP",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            }
          ],
          "subHeading": "",
          "MainHeading": "Vibration",
          "model2Class": "dataListWrapper",
          "redirectLink": "/",
          "componentName": "Gauge",
          "NoOfComponents": "3",
          "MainComponentName": "vibration/summary"
        },
        {
          "unit": "",
          "order": "7",
          "heading": " ",
          "location": "right",
          "className": "fourCol-row cardWrap pdBlock",
          "sideAlarm": "",
          "Configured": "true",
          "ScreenName": "Flux Monitoring",
          "components": [
            {
              "unit": "",
              "height": "",
              "heading": "Flux Status ",
              "tagName": "FLUX_STATUS_CAL",
              "alarmIds": [],
              "isWidget": "false",
              "className": "item25",
              "sideAlarm": "true",
              "ShowTrends": "true",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": false,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "OnlyTextWidget",
              "realTagsForWidget": []
            },
            {
              "max": "100",
              "min": "0",
              "unit": "",
              "isDga": false,
              "width": "",
              "height": "",
              "heading": "Status Result",
              "tagName": "FLUX_STATUS_CAL",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "textWidget noCards item75",
              "sideAlarm": "false",
              "displayName": "",
              "customObject": {
                "bgColor": "#fff7d1 ",
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "TextWidget",
              "realTagsForWidget": []
            },
            {
              "max": "120",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Pole 1 Max NFD",
              "likeTag": "",
              "tagName": "POLE1_COIL%_NORM_FLUX_DENS",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            },
            {
              "max": "120",
              "min": "0",
              "unit": "",
              "width": "",
              "height": "",
              "prefix": [
                ""
              ],
              "heading": "Pole 2 Max NFD",
              "likeTag": "",
              "tagName": "POLE2_COIL%_NORM_FLUX_DENS",
              "alarmIds": [],
              "isWidget": "false",
              "tagNames": [],
              "className": "",
              "imageName": "",
              "sideAlarm": "false",
              "precedence": "DESC",
              "subHeading": "",
              "ShowTagType": true,
              "displayName": "",
              "ShowTrendRoC": true,
              "customObject": {
                "textAlign": "left",
                "fontWeight": "bold"
              },
              "componentName": "RealtimePrecedenceGaugeWidget",
              "realTagsForWidget": []
            }
          ],
          "subHeading": " ",
          "MainHeading": "Flux Monitoring",
          "ShowViewAll": "true",
          "model2Class": "dataListWrapper",
          "redirectLink": "/summary",
          "componentName": "Gauge",
          "NoOfComponents": "2",
          "MainComponentName": "flux"
        }
      ],
      "link": "",
      "label": ""
    }
  ],
  "LoadData": [
    {
      "tagName": "ACTIVE_POWER",
      "displayName": "Power",
      "componentName": "NameValueButton",
      "directionRight": false
    },
    {
      "tagName": "CURR_PH_B",
      "displayName": "Current",
      "componentName": "NameValueButton",
      "directionRight": false
    },
    {
      "tagName": "VOLT_PH_B",
      "displayName": "Voltage",
      "componentName": "NameValueButton",
      "directionRight": false
    },
    {
      "tagName": "FREQ",
      "displayName": "Frequency",
      "componentName": "NameValueButton",
      "directionRight": true
    },
    {
      "tagName": "POWER_FACTOR",
      "displayName": "",
      "componentName": "NameValueButton",
      "directionRight": true
    },
    {
      "tagName": "THD",
      "displayName": "",
      "componentName": "NameValueButton",
      "directionRight": true
    }
  ],
  "ShowAlarm": true,
  "SummaryModel": "model1",
  "Recommendation": [
    {
      "customObject": {
        "bgColor": "#fff7d1 "
      },
      "componentName": "RecommendationWidget"
    }
  ],
  "FixedNameplateTags": [
    {
      "tagName": "ASSET_TAG_DESCRIPT",
      "directionRight": false
    },
    {
      "tagName": "ASSET_SUB_CATG",
      "directionRight": false
    },
    {
      "tagName": "MAKE",
      "directionRight": false
    },
    {
      "tagName": "COMM_DATE",
      "directionRight": false
    },
    {
      "tagName": "MVA_RATING",
      "directionRight": false
    },
    {
      "tagName": "ASSET_CATG",
      "directionRight": false
    },
    {
      "tagName": "RATED_VOLT",
      "directionRight": false
    },
    {
      "tagName": "MC_TYPE",
      "directionRight": false
    },
    {
      "tagName": "MC_POLES",
      "directionRight": false
    },
    {
      "tagName": "MC_TH_INS_CLASS",
      "directionRight": false
    },
    {
      "tagName": "MFG_SITE",
      "directionRight": true
    },
    {
      "tagName": "BUSS_ZONES",
      "directionRight": true
    },
    {
      "tagName": "PLANT_AREA",
      "directionRight": true
    },
    {
      "tagName": "INSTAL_PHASE",
      "directionRight": true
    },
    {
      "tagName": "PLANT_NAME",
      "directionRight": true
    },
    {
      "tagName": "SUB_PROCESS_NAME",
      "directionRight": true
    },
    {
      "tagName": "SUBSTATION",
      "directionRight": true
    },
    {
      "tagName": "CONN_SW_BOARD",
      "directionRight": true
    },
    {
      "tagName": "MAP_LAT",
      "directionRight": true
    },
    {
      "tagName": "MAP_LONG",
      "directionRight": true
    }
  ]
}'
WHERE asset_type_name='generator' and json_type=0 and asset_id=0;
;

UPDATE public.version SET version = 1336 WHERE type = 'db_version';

--Customer id = 1
-- shashi
--Made criticality index form configurable in Admin

update all_jsons set json = '{
    "criticalityFactors": {
        "Dependence on the Asset": [
            {
                "name": "Low",
                "value": 1,
                "i-info": "Failure of this asset would have minimal impact on other parts of the system."
            },
             {
                "name": "Moderate",
                "value": 2,
                "i-info": "Failure of this asset would cause disruptions to a limited number of dependent assets or processes."
            },
            {
                "name": "Serious",
                "value": 3,
                "i-info": "Failure of this asset would cause disruptions to several dependent assets or processes."
            },
             {
                "name": "Severe",
                "value": 4,
                "i-info": "Failure of this asset would cause major disruptions to critical processes or large sections of the system."
            },
             {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "Failure of this asset would cause widespread outages across the entire grid or critical infrastructure."
            }
        ],
        "Replaceability and Repair Time": [
            {   "name": "Low",
                "value": 1,
                "i-info": "Replacing or repairing this asset requires an exceptional amount of time and resources, leading to a lengthy outage with significant consequences"
            },
            {
                "name": "Moderate",
                "value": 2,
                "i-info": "Repairing or replacing the asset takes a considerable amount of time, causing a prolonged outage that disrupts critical operations."
            },
            {
                "name": "Serious",
                "value": 3,
                "i-info": "Replacing or repairing the asset takes a moderate amount of time, causing a service interruption that may impact operations or customer service."
            },
             {
                "name": "Severe",
                "value": 4,
                "i-info": "Replacing or repairing the asset takes a relatively short amount of time, causing minimal disruption to operations."
            },
             {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "Replacing or repairing the asset takes a relatively short amount of time, causing minimal disruption to operations."
            }
        ],
        "Loss of Profits": [
            {
                "name": "Low",
                "value": 1,
                "i-info": "<0.1 M Euro"
            },
             {
                "name": "Moderate",
                "value": 2,
                "i-info": "0.1 to 1 M Euro"
            },
             {
                "name": "Serious",
                "value": 3,
                "i-info": "1 to 10 M Euro"
            },
            {
                "name": "Severe",
                "value": 4,
                "i-info": "10 to 100 M Euro"
            },
            {
                "name": "Catastrophe ",
                "value": 5,
                "i-info": "> 100 M Euro"
            }
        ],
        "Public Reputation of the Organization": [ 
            {    "name": "Low",
                "value": 1,
                "i-info": "Failure of this asset has minimal or no impact on the organizations public reputation."
            },
             {
                "name": "Moderate",
                "value": 2,
                "i-info": "Local and Temporary [Few External Parties Complaining about Utility or Media Critics"
            },
            {
                "name": "Serious",
                "value": 3,
                "i-info": "Regional and National (< 3 Days) [lots of External Parties complaining about Utility with media relays]"
            },
             {
                "name": "Severe",
                "value": 4,
                "i-info": "Regional and National (1 to 2 weeks) [Expression of external official actors like politics, state representative, etc. that target utilitys legitimacy]"
            },
            {
                "name": "Catastrophe",
                "value": 5,
                "i-info": "Reginal and National (> 2 weeks) [Long Term external association of public actors/representatives that greatly affect Utilitys Legitimacy]"
            }
        ]
    },
    "showCriticalityIndexForm":true
    
}' where json_type= 38 and asset_type_name = 'criticality_index';
;

UPDATE public.version SET version = 1343 WHERE type = 'db_version';

--Customer id = 1
-- sunny krishna
--new property added

UPDATE public.all_jsons SET
json = '
{
  
  "alarmSettings": {
    "isAlarmWarningLatch": false,
    "isDelayNotification": false,
    "isSelectedTickMark": true,
    "isAlertAcknowledge":true
    
  },
  "assetAnalytics": {
    "ShowNewButton": true
  },
  "recentActiveAlerts": {
    "showAlertSelection": false
  },
  "ReportTimeSelection": {
    "hideTime": true
  },
  "showDefualtTimeDate": {
    "showCurrentDate": true
  },
  "showMfLocaAsset": {
    "showSection": false
  },
  "showButtons": {
    "showExcelBtn": true,
    "showNewBtn": false,
    "showall": true,
    "showViewButton": true
  },
  "alertScreenTabs": {
    "showAlertTabs": false
  },
  "showExternalUrl": {
    "showExternalUrl": false
  },
    "showDashbordIcon": {
    "showMrDashIcon": false
  }  ,
    "systemConfiguration": {
    "isClickable": false,
    "showExcelBtn": false,
    "showNewBtn": true,
    "isEditVisible":true
  },
  "dynamicPlaceHolder": {
    "searchPlaceHolder": true
  },
    "navigateTogatewaydeviceslist": {
    "navigate": true
  },
  "assetFormFields": {
      "isVisible": false
    },
     "showLogo": {
      "showLogo": false
    },
     "showSubHeading": {
      "showSubHeading": true
    }

}


'::json WHERE asset_id=0 and asset_type_name='application_theme_and_feature_config'
;

UPDATE public.version SET version = 1346 WHERE type = 'db_version';

--Customer id = 1
-- sunny Krishna
--new properties added

UPDATE public.all_jsons SET
json = '{
 
  "alarmSettings": {
    "isAlarmWarningLatch": false,
    "isDelayNotification": false,
    "isSelectedTickMark": true,
    "isAlertAcknowledge":false,
"showExternalUser":false   
  },
  "assetAnalytics": {
    "ShowNewButton": true
  },
  "recentActiveAlerts": {
    "showAlertSelection": false
  },
  "ReportTimeSelection": {
    "hideTime": true
  },
  "showDefualtTimeDate": {
    "showCurrentDate": true
  },
  "showMfLocaAsset": {
    "showSection": false
  },
  "showButtons": {
    "showExcelBtn": true,
    "showNewBtn": false,
    "showall": true,
    "showViewButton": true
  },
  "alertScreenTabs": {
    "showAlertTabs": false
  },
  "showExternalUrl": {
    "showExternalUrl": false
  },
    "showDashbordIcon": {
    "showMrDashIcon": false
  }  ,
    "systemConfiguration": {
    "isClickable": false,
    "showExcelBtn": false,
    "showNewBtn": true,
    "isEditVisible":true
  },
  "dynamicPlaceHolder": {
    "searchPlaceHolder": true
  },
    "navigateTogatewaydeviceslist": {
    "navigate": true
  },
  "assetFormFields": {
      "isVisible": false
    },
     "showLogo": {
      "showLogo": false
    },
     "showSubHeading": {
      "showSubHeading": true
    },
     "showIconShape": {
      "isBoxIcon": false
    }
 
}'::json WHERE asset_id=0 and asset_type_name='application_theme_and_feature_config';

;

UPDATE public.version SET version = 1347 WHERE type = 'db_version';

--Customer id = 1
-- sunny
--to alter the data type of column

ALTER TABLE public.alarm_settings ALTER COLUMN latch TYPE integer USING latch::integer;;

UPDATE public.version SET version = 1350 WHERE type = 'db_version';

--Customer id = 1
-- shashi
--made unique key in users conditional

ALTER TABLE public.users DROP CONSTRAINT IF EXISTS user_name_key;

CREATE UNIQUE INDEX IF NOT EXISTS unique_active_username
ON public.users (user_name)
WHERE status_id != 2;;

UPDATE public.version SET version = 1357 WHERE type = 'db_version';

--Customer id = 1
-- sunny krishna
--alter latch column

ALTER TABLE public.alarm_settings ALTER COLUMN latch TYPE integer USING latch::integer;;

UPDATE public.version SET version = 1358 WHERE type = 'db_version';

