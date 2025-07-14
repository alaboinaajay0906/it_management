--fileStatus=0

--Customer id = 1
-- Rajesh
--motor_summary_json_update_script RSD-2847

UPDATE public.all_jsons SET json='{
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
					"MainHeading": "Running Status",
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
							"tagName": "EQUIP_ALARM",
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
							"min": "0",
							"max": "100",
							"displayName": "Power Factor",
							"componentName": "RealtimeGauge"
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
							"componentName": "CustomTextTapCount"
						},
						{
							"tagName": "",
							"tagNames": [
								"VOLT_BALANCE",
								"CURR_BALANCE"
							],
							"heading": "Unbalance",
							"componentName": "CommonChart"
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
							"min": "0",
							"max": "60",
							"subHeading": "",
							"displayName": "Frequency",
							"imageName": "",
							"componentName": "RealtimeGaugeWidget"
						},
						{
							"tagName": "ACTIVE_POWER_CSA",
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
							"min": "0",
							"max": "60",
							"subHeading": "",
							"displayName": "Active Power",
							"imageName": "",
							"precision": 2,
							"overallPrecision": 8,
							"lowerExp": -8,
							"upperExp": 8,
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
					"redirectLink": "/pd/pdrealtime",
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
							"min": "0",
							"max": "90",
							"displayName": "PD_S%_STATUS",
							"componentName": "PDPrecedenceTextWidget"
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
							"min": "0",
							"max": "90",
							"displayName": "PD_S%_STATUS",
							"componentName": "PDPrecedenceTextWidget"
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
							"min": "0",
							"max": "90",
							"displayName": "PD_S%_STATUS",
							"componentName": "PDPrecedenceTextWidget"
						},
						{
							"tagName": "",
							"className": "textWidget noCards",
							"realTagsForWidget": [],
							"height": "",
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"heading": "Recommendation",
							"unit": "",
							"isWidget": "false",
							"sideAlarm": "false",
							"min": "0",
							"max": "100",
							"isDga": false,
							"displayName": "",
							"componentName": "TextWidget"
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
							"displayName": "",
							"ShowTrends": "true",
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
							"className": "item100",
							"realTagsForWidget": [],
							"height": "",
							"width": "",
							"alarmIds": [],
							"heading": "",
							"unit": "",
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
							"min": "0",
							"max": "70",
							"subHeading": "Deg C",
							"displayName": "Ambient",
							"imageName": "tempIcon.gif",
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
							"min": "0",
							"max": "120",
							"subHeading": "",
							"displayName": "",
							"imageName": "tempIcon.gif",
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
							"min": "0",
							"max": "120",
							"subHeading": "Deg C",
							"displayName": "",
							"imageName": "tempIcon.gif",
							"componentName": "RealtimePrecedenceGaugeWidget"
						},
						{
							"tagName": "CLNG_INLET_TEMP",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Cooling Inlet",
							"unit": "",
							"likeTag": "",
							"isWidget": "false",
							"sideAlarm": "false",
							"ShowTagType": true,
							"min": "0",
							"max": "120",
							"subHeading": "Deg C",
							"displayName": "",
							"imageName": "tempIcon.gif",
							"componentName": "RealtimeGaugeWidget"
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
							"min": "0",
							"max": "120",
							"subHeading": "",
							"displayName": "",
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
							"min": "0",
							"max": "120",
							"subHeading": "",
							"displayName": "",
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
							"min": "0",
							"max": "120",
							"subHeading": "",
							"displayName": "",
							"imageName": "",
							"componentName": "RealtimePrecedenceGaugeWidget"
						}
					]
				}
			]
		}
	]
}'
WHERE asset_id=0 and asset_type_name = 'motor' 
    AND json_type = 0
;

UPDATE public.version SET version = 2 WHERE type = 'db_version';

