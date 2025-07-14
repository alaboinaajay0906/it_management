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

--Customer id = 1
-- Rajesh
--generator_summary_json_update_script RSD-2847

UPDATE public.all_jsons SET json='{
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
	],
	"SummaryModel": "model1",
	"ShowAlarm": true,
	"LoadData": [
		{
			"tagName": "ACTIVE_POWER",
			"displayName": "Power",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "CURR_PH_B",
			"displayName": "Current",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "VOLT_PH_B",
			"displayName": "Voltage",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "FREQ",
			"displayName": "Frequency",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "POWER_FACTOR",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "THD",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		}
	],
	"Recommendation":[
		{
			 "componentName":"RecommendationWidget"
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
					"MainComponentName": "csa",
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
							"ShowThresholds":"true",
							"ShowTagType": true,
							"startAngle": 90,
							"endAngle": 450,
							"alarmIds": [],
							"tagNames": [],
							"heading": "",
							"unit": "",
							"isWidget": "false",
							"sideAlarm": "false",
							"min": "0",
							"max": "100",
							"displayName": "Power Factor",
							"componentName": "RealtimeGauge"
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
					"order": "4",
					"location": "left",
					"model2Class": "dataTableWrapper",
					"className": "twoCol-row",
					"heading": "",
					"subHeading": "",
					"componentName": "csa",
					"components": [
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
					"MainHeading": "Partial Discharge",
					"ScreenName": "PD Analytics",
					"Configured": "true",
					"NoOfComponents": "4",
					"MainComponentName": "pdanalytics",
					"sideAlarm": "",
					"unit": "",
					"order": "3",
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
							"max": "60",
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
							"max": "190",
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
							"tagName": "CLNG_OUTLET_TEMP",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Cooling Outlet",
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
							"componentName": "RealtimePrecedenceGaugeWidget"
						}
					]
				},
				{
					"MainHeading": "Vibration",
					"ScreenName": "Vibration Analytics",
					"Configured": "true",
					"NoOfComponents": "3",
					"MainComponentName": "vibration/summary",
					"redirectLink": "/",
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
				},
				{
					"MainHeading": "Flux",
					"ScreenName": "Flux Monitoring",
					"Configured": "true",
					"NoOfComponents": "2",
					"MainComponentName": "flux",
					"sideAlarm": "",
					"unit": "",
					"order": "7",
					"ShowViewAll": "true",
					"redirectLink": "/vital",
					"model2Class": "dataListWrapper",
					"className": "fourCol-row cardWrap",
					"location": "right",
					"heading": " ",
					"subHeading": " ",
					"componentName": "Gauge",
					"components": [
						{
							"tagName": "POLE1_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 1 Max NFD",
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
							"tagName": "POLE2_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 2 Max NFD",
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
WHERE asset_id=0 and asset_type_name = 'generator' 
    AND json_type = 0
;

UPDATE public.version SET version = 3 WHERE type = 'db_version';

--Customer id = 1
-- Niveditha
--updated the  input tag in master json of CSA health index for motor and generator.For motor and generator tag are same - EQUIP_STATUS

UPDATE public.analytics_json
	SET analytics_json='[{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "water_content",
        "required": false,
        "param_type": "input",
        "display_name": "Water Content",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relative_saturation",
        "required": false,
        "param_type": "output",
        "display_name": "Relative Saturation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_in_oil_condition",
        "required": false,
        "param_type": "output",
        "display_name": "Moisture in Oil Condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "mio",
    "analytic_type_display_name": "Moisture in Oil"
},
{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "relative_saturation",
        "required": false,
        "param_type": "input",
        "display_name": "Relative Saturation(%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wcp",
        "required": false,
        "param_type": "output",
        "display_name": "Moisture Estimation in Paper(%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_in_paper_condition",
        "required": false,
        "param_type": "output",
        "display_name": "Moisture in Paper Condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "mip",
    "analytic_type_display_name": "Moisture in Paper"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "water_content_in_paper_perc",
        "required": false,
        "param_type": "input",
        "display_name": "Moisture Estimation in Paper(%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bit",
        "required": false,
        "param_type": "output",
        "display_name": "Bubbling Inception Temperature(Celcius)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "bit",
    "analytic_type_display_name": "Bubbling Temperature"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Voltage",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_load_current",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Load Current (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trafo_MVA",
        "required": false,
        "param_type": "input",
        "display_name": "Transformer MVA Rating (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_hourly_LoadCycle",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Hourly Load Cycle",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_daily_LoadCycleCTL",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Daily Load Cycle Continuous",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_daily_LoadCycleSTL",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Daily Load Cycle Short Term",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_power_threshold",
        "required": false,
        "param_type": "setting",
        "display_name": "Load Power Threshold",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "calculation_duration",
        "required": false,
        "param_type": "setting",
        "display_name": "Calculation Duration in Minutes",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "overloadCapacity",
    "analytic_type_display_name": "Overload Capacity"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "hotspot_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Hotspot Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "comm_date",
        "required": false,
        "param_type": "input",
        "display_name": "Commissioning date from nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "per_unit_tx_insulation_life",
        "required": false,
        "param_type": "output",
        "display_name": "Per unit transformer insulation life",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eqAgingOfTrafoLife",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Aging of Transformer Life",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentLossOfLifePerDay",
        "required": false,
        "param_type": "output",
        "display_name": "Percent Loss of Life Per Day",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "agingFactor",
        "required": false,
        "param_type": "output",
        "display_name": "Aging Acceleration Factor",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cumulativeAgeHr",
        "required": false,
        "param_type": "output",
        "display_name": "Cummulative Age Hour",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentLossOfLifePerHour",
        "required": false,
        "param_type": "output",
        "display_name": "Percent Loss of Life Per Hour",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_aging_of_trafo_life_for_every_365_days",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Aging of Transformer life for every 365 days",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "consumption_of_percent_loss_of_life_for_every_365_days",
        "required": false,
        "param_type": "output",
        "display_name": "Consumption of Percent Loss of Life for every 365 days",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "trans_life",
    "analytic_type_display_name": "Transformer Life"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "load_current",
        "required": false,
        "param_type": "input",
        "display_name": "Load Current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "line_voltage_actual",
        "required": false,
        "param_type": "input",
        "display_name": "Line Voltage (Actual)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_fan_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Group Status (Oil)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_pump_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Group Status (Oil)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_fan_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Group Status (Winding)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_pump_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Group Status (Winding)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_load",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Load",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "weight_of_core_and_coil_assembly_kg",
        "required": false,
        "param_type": "input",
        "display_name": "Weight of core and coil assembly (KG)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "weight_of_tank_and_fittings_kg",
        "required": false,
        "param_type": "input",
        "display_name": "Weight of Tank and Fittings (kg)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "liters_of_oil",
        "required": false,
        "param_type": "input",
        "display_name": "Liters of Oil",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_loss",
        "required": false,
        "param_type": "input",
        "display_name": "Load Loss",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_load",
        "required": false,
        "param_type": "input",
        "display_name": "No Load",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_rise_over_amb_temp_at_rated_load",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Rise over Ambient Temp at Rated Load",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hottestspot_rise_over_ambient_temp_at_rated_load_on_the_tap_position",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Hottest Spot Rise over Ambient Temp at Rated Load on the Tap Position",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "calculation_duration",
        "required": false,
        "param_type": "setting",
        "display_name": "Calculation Duration in Minutes",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_rise_over_amb_temp",
        "required": false,
        "param_type": "output",
        "display_name": "Top Oil Rise over Ambient Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hottest_spot_rise_over_top_oil_temp",
        "required": false,
        "param_type": "output",
        "display_name": "Winding Hottest Spot Rise over Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hotspot_rise_over_top_oil",
        "required": false,
        "param_type": "output",
        "display_name": "Hotspot Rise over Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "winding_hotspot",
    "analytic_type_display_name": "Winding Hotspot & Oil Temperature"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "tan_delta_off",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_off",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "amb_temp_off",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage Current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "amb_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_fat",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta (FAT)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_fat",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance (FAT)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "crack_on_porcelain",
        "required": false,
        "param_type": "input",
        "display_name": "Crack on Porcelain of Bushing (YES/NO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_leakage_on_bushing",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage on Bushing (YES/NO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "arcing_sound",
        "required": false,
        "param_type": "input",
        "display_name": "Arcing Sound on Bushing (NO/LOW/HIGH)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surface_dirt",
        "required": false,
        "param_type": "input",
        "display_name": "Condition of Surface Dirt on Bushing (NO/LOW/HIGH)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "looseness_of_test_tap",
        "required": false,
        "param_type": "input",
        "display_name": "Looseness of the Test Tap on Bushing (YES/NO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sealing",
        "required": false,
        "param_type": "input",
        "display_name": "Condition of Sealing on Bushing (TIGHT/LOOSE)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_level",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Level in the Bushing (OK/NotOK)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "conductor_connection",
        "required": false,
        "param_type": "input",
        "display_name": "Condition of Conductor connection with Bushing (TIGHT/LOOSE)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bushing_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "Bushing Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bushing_type",
        "required": false,
        "param_type": "setting",
        "display_name": "Bushing Type",
        "suggested_tag": "",
        "default_value": "OIP",
        "settings_value": [{
            "name": "OIP",
            "value": "1"
        }, {
            "name": "RIP",
            "value": "2"
        }, {
            "name": "RBP",
            "value": "3"
        }, {
            "name": "CI",
            "value": "4"
        }]
    }],
    "analytic_type": "bushing_hi",
    "analytic_type_display_name": "Bushing Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "tan_delta_off",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_winding_resistance_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_turn_ratio_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Turn Ratio Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_excitation_current_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Excitation Current Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_magnetic_balance_test_flux_summation_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Magnetic Balance Test Flux Summation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_magnetic_balance_test_cross_flux_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Magnetic Balance Test Cross Flux",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_three_sc_impedence_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Three SC Impedance Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_winding_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Measurement Winding Deviation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_winding_deviation_fat",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Measurement Winding Deviation FAT",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_pi_off",
        "required": false,
        "param_type": "input",
        "display_name": "PI Values (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_ir_winding_off",
        "required": false,
        "param_type": "input",
        "display_name": "IR Values of winding (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_ir_winding_cc_cl",
        "required": false,
        "param_type": "input",
        "display_name": "IR Values of CC-CL (Core Frame lamination) (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_by_dry_weight_in_paper_off",
        "required": false,
        "param_type": "input",
        "display_name": "Moisture in paper Measurement (DIRANA Test) (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_sfra_measurement_freq_range_off",
        "required": false,
        "param_type": "input",
        "display_name": "SFRA/FRA Measurement (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temperature",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Temperature (Calculated)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_in_paper",
        "required": false,
        "param_type": "input",
        "display_name": "Online Moisture in paper (Calculated)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "water_saturation_of_oil",
        "required": false,
        "param_type": "input",
        "display_name": "Water Saturation Of Oil",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "measured_winding_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Temperature ",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bottom_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Bottom Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hotspot",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Hotspot",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hi",
        "required": true,
        "param_type": "output",
        "display_name": "Winding Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "winding_hi",
    "analytic_type_display_name": "Winding Health Index"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "subsystem",
        "required": true,
        "param_type": "setting",
        "display_name": "Subsystem",
        "suggested_tag": "",
        "default_value": "Maintank",
        "settings_value": [{
            "name": "Maintank",
            "value": "1"
        }, {
            "name": "OLTC",
            "value": "2"
        }]
    }, {
        "name": "OIL_TYPE",
        "required": true,
        "param_type": "input",
        "display_name": "Oil Type",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "H2",
        "required": false,
        "param_type": "input",
        "display_name": "H2 (Hydrogen Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "H2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "H2 (Hydrogen Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CH4",
        "required": false,
        "param_type": "input",
        "display_name": "CH4 (Methane Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CH4_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "CH4 (Methane Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H6",
        "required": false,
        "param_type": "input",
        "display_name": "C2H6 (Ethane Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H6_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "C2H6 (Ethane Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H4",
        "required": false,
        "param_type": "input",
        "display_name": "C2H4 (Ethylene Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H4_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "C2H4 (Ethylene Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H2",
        "required": false,
        "param_type": "input",
        "display_name": "C2H2 (Acetylene Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "C2H2 (Acetylene Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO",
        "required": false,
        "param_type": "input",
        "display_name": "CO (Carbon Monoxide Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "CO (Carbon Monoxide Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO2",
        "required": false,
        "param_type": "input",
        "display_name": "CO2 (Cardon Dioxide Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "CO2 (Cardon Dioxide Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "N2",
        "required": false,
        "param_type": "input",
        "display_name": "N2 (Nitrogen Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "N2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "N2 (Nitrogen Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "Furan_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "2FAL (Furan Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chending_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Chendong model Degree of Polymerization",
        "suggested_tag": "DP_BY_CHENDOG",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stebbins_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Stebbins model Degree of Polymerization",
        "suggested_tag": "DP_BY_STEBBINS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dePablo_dp",
        "required": false,
        "param_type": "output",
        "display_name": "De Pablo model Degree of Polymerization",
        "suggested_tag": "DP_BY_DE PABLO",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pahalavanpour_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Pahalavanpour model Degree of Polymerization",
        "suggested_tag": "DP_BY_PAHALAVANPOUR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "paulVaurchex_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Paul Vaurchex model Degree of Polymerization",
        "suggested_tag": "DP_BY_PAUL VAURCHEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "burton_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Burton model Degree of Polymerization",
        "suggested_tag": "DP_BY_BURTON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dong_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Dong model Degree of Polymerization",
        "suggested_tag": "DP_BY_DONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "liYSong_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Li Y Song model Degree of Polymerization",
        "suggested_tag": "DP_BY_LI_ET_Y_SONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chaohui_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Chaohui model Degree of Polymerization",
        "suggested_tag": "DP_BY_CHAOHUI_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "myser1_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Myser1 model Degree of Polymerization",
        "suggested_tag": "DP_BY_MYSER_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "avg_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Average Degree of Polymerization",
        "suggested_tag": "DP_AVG",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chending_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Chendong model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_CHENDOG",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stebbins_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Stebbins model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_STEBBINS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dePablo_lu",
        "required": false,
        "param_type": "output",
        "display_name": "De Pablo model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_DE_PABLO",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pahalavanpour_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Pahalavanpour model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_PAHALAVANPOUR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "paulVaurchex_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Paul Vaurchex model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_PAUL_VAURCHEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "burton_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Burton model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_BURTON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dong_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Dong model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_DONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "liYSong_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Li Y Song model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_LI_ET_Y_SONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chaohui_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Chaohui model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_CHAOHUI_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "myser1_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Myser1 model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_MYSER_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "avg_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Average Life consumed by Trafo paper",
        "suggested_tag": "LIFE_CONSUMED_AVG",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "dga",
    "analytic_type_display_name": "Dissolved Gas Analysis"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "steady_state_current",
        "required": false,
        "param_type": "input",
        "display_name": "Steady State current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "in_rush_current",
        "required": false,
        "param_type": "input",
        "display_name": "In Rush current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_torque_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor torque measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Static Winding Resistance Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_power_consumption",
        "required": false,
        "param_type": "input",
        "display_name": "Motor power consumption",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_tap_change_position",
        "required": false,
        "param_type": "input",
        "display_name": "No of tap change position",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "time_duration_of_tap_changing",
        "required": false,
        "param_type": "input",
        "display_name": "Time duration of tap changing",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Top oil temp",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bottom_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Bottom oil temp",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_for_leaks_oil_or_water",
        "required": false,
        "param_type": "input",
        "display_name": "Check for leaks of oil or water",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operate_tap_changer_both_directions",
        "required": false,
        "param_type": "input",
        "display_name": "Operate tap changer in both directions",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "unusual_sounds",
        "required": false,
        "param_type": "input",
        "display_name": "Unusual sounds",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_counter_working",
        "required": false,
        "param_type": "input",
        "display_name": "Operation counter working",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "raise_or_lower_indicator_flag_returns_to_center_when_op_in_both_directions",
        "required": false,
        "param_type": "input",
        "display_name": "Raise or lower indicator flag returns to center when operated in both directions",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_for_drive_belt_tension_adjust",
        "required": false,
        "param_type": "input",
        "display_name": "Check for drive belt tension adjust",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_switch_on_and_heater_working",
        "required": false,
        "param_type": "input",
        "display_name": "Heater switch on and heater working",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "general_visual_inspection",
        "required": false,
        "param_type": "input",
        "display_name": "General visual inspection",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "remote_or_manual_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Remote or manual operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "checking_wiring_and_control",
        "required": false,
        "param_type": "input",
        "display_name": "Check wiring and control",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_limit_switch_position",
        "required": false,
        "param_type": "input",
        "display_name": "Check limit switch operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_mechanical_stop_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Check mechanical stop operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "greasing_in_all_bevel_gear_of_shaft_of_oltc",
        "required": false,
        "param_type": "input",
        "display_name": "Greasing in all bevel gear of shaft of oltc",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "perform_visual_checks",
        "required": false,
        "param_type": "input",
        "display_name": "Perform visual checks",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "test_sequence_of_step_to_step_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Test sequence of step to step operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_anti_condensation_heater_and_cubicle_door_seals",
        "required": false,
        "param_type": "input",
        "display_name": "Check anti condensation heater and cubicle door seals",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_remote_control_position_indicator",
        "required": false,
        "param_type": "input",
        "display_name": "Check remote control position indicator",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "perform_additional_checks_according_to_manufacturers_manual",
        "required": false,
        "param_type": "input",
        "display_name": "Perform additional checks according to manufacturers manual",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_end_position_blockings",
        "required": false,
        "param_type": "input",
        "display_name": "Check end position blockings",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_breather_for_oltc_expansion_tank_at_regular_intervals",
        "required": false,
        "param_type": "input",
        "display_name": "Check breather for oltc expansion tank at regular intervals",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_at_regular_intervals_the_function_of_protective_devices",
        "required": false,
        "param_type": "input",
        "display_name": "Check at regular intervals the function of protective devices",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pull_oil_samples_for_lab_tests",
        "required": false,
        "param_type": "input",
        "display_name": "Pull oil samples for lab tests",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "verify_proper_oil_level",
        "required": false,
        "param_type": "input",
        "display_name": "Verify proper oil level",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "new_oil_added",
        "required": false,
        "param_type": "input",
        "display_name": "New oil added",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_cup_at_bottom",
        "required": false,
        "param_type": "input",
        "display_name": "Oil cup at bottom",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "silica_gel_color",
        "required": false,
        "param_type": "input",
        "display_name": "Silica gel color",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_in_oil_cup",
        "required": false,
        "param_type": "input",
        "display_name": "Oil in oil cup",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_for_leaks_in_ltc",
        "required": false,
        "param_type": "input",
        "display_name": "Check for leaks in ltc",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oltc_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "OLTC HI output",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "oltc_hi",
    "analytic_type_display_name": "OLTC Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "maintank",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in Maintank",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "radiator",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in Radiator",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "valves",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in Valves",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cc_cl",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in CC-CL",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ct_turret",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in CT Turret",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_temp_thermometer",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Oil Temp. Thermometer",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wind_temp_thermomter_hv",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Winding Temp. Thermometer for HV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wind_temp_thermomter_lv",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Winding Temp. Thermometer for LV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_level_indicator",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Oil Level Indicator",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "buccholz_relay",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Buccholz Relay",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pres_relief_valve",
        "required": false,
        "param_type": "input",
        "display_name": "Pressure relief Valve (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sudden_pres_relay",
        "required": false,
        "param_type": "input",
        "display_name": "Sudden Pressure Relay (Protection Device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pres_cntrl_sys",
        "required": false,
        "param_type": "input",
        "display_name": "Gas Pressure Control System (Protection Device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bladder_fail_relay_for_conservator_tank",
        "required": false,
        "param_type": "input",
        "display_name": "Bladder Failure relay for Conservator tank (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "osr_tripping_checked",
        "required": false,
        "param_type": "input",
        "display_name": "OSR Tripping Checked (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "mog_alarm_of_maintank_conservator",
        "required": false,
        "param_type": "input",
        "display_name": "MOG Alarm of Maintank Conservator (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "mog_alarm_of_oltc_conservator",
        "required": false,
        "param_type": "input",
        "display_name": "MOG Alarm of OLTC  Conservator (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "improper_grounding_of_trafo",
        "required": false,
        "param_type": "input",
        "display_name": "Number of Improper Grounding of Trafo",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gasket_damage",
        "required": false,
        "param_type": "input",
        "display_name": "Number of Gasket damaged",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_level",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Level",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Pressure",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "maintank_trafo_aux_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "Maintank and Trafo Aux HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "maintank_trafo_aux_hi",
    "analytic_type_display_name": "Maintank and Trafo Aux HI"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "fan_status",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_pump_status",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Pump Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flow_indicator_status",
        "required": false,
        "param_type": "input",
        "display_name": "Flow Indicator Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_status_ac_supply_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Status AC Supply Voltage",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "auto_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Auto Operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manual_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Manual Operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "water_cooled",
        "required": false,
        "param_type": "input",
        "display_name": "Water Cooled",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_water_cooled",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Water Cooled",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "forced_air_forced_oil_cooler",
        "required": false,
        "param_type": "input",
        "display_name": "Forced Air Forced Oil Cooler",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "damage_of_pump_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "Damage Of Pump Bearing",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotation_of_pump",
        "required": false,
        "param_type": "input",
        "display_name": "Rotation Of Pump",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_condition_for_pump",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Condition For Pump",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fan_motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Motor Current Steady State",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fan_motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Motor Current Inrush",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "normal_current",
        "required": false,
        "param_type": "input",
        "display_name": "Normal Current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Motor Current Steady State",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Motor Current Inrush",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "difference_of_cooling_system",
        "required": false,
        "param_type": "input",
        "display_name": "Difference Of Cooling System",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_system_flow_monitoring_flow_rate",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling System Flow Monitoring Flow Rate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_system_flow_monitoring_pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling System Flow Monitoring Pressure",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flow_rated_value",
        "required": false,
        "param_type": "input",
        "display_name": "Flow Rated Value",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pressure_rated_value",
        "required": false,
        "param_type": "input",
        "display_name": "Pressure Rated Value",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "number_of_run_hours_for_fan_or_cooling",
        "required": false,
        "param_type": "input",
        "display_name": "Number Of Run Hours For Fan Or Cooling",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_number_of_running_hours_for_each",
        "required": false,
        "param_type": "input",
        "display_name": "Total Number Of Running Hours For Each",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_number_of_starts_for_each",
        "required": false,
        "param_type": "input",
        "display_name": "Total Number Of Starts For Each",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_run_hours_for_fan_or_cooling_nameplate",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Run Hours For Fan Or Cooling Nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_run_hours_for_each_nameplate",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Run Hours For Each Nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_starts_for_each_nameplate",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Starts For Each Nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_system_hi",
        "required": true,
        "param_type": "output",
        "display_name": "Cooling System HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_type",
        "required": false,
        "param_type": "setting",
        "display_name": "Cooling Type",
        "suggested_tag": "",
        "default_value": "ONAN",
        "settings_value": [{
            "name": "ONAN",
            "value": "0"
        }, {
            "name": "ONAF",
            "value": "1"
        }, {
            "name": "OFAF",
            "value": "2"
        }]
    }],
    "analytic_type": "cooling_system_hi",
    "analytic_type_display_name": "Cooling System HI"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "acidity",
        "required": false,
        "param_type": "input",
        "display_name": "Acidity (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bdvkv",
        "required": false,
        "param_type": "input",
        "display_name": "BDV (in kV)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "c2h2ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Acetylene (C2H2)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "c2h4ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Ethylene (C2H4)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "c2h6ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Ethane (C2H6)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ch4ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Methane (CH4)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co2ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Dioxide (CO2)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coppm",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Monoxide (CO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "h2ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Hydrogen (H2)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ddf",
        "required": false,
        "param_type": "input",
        "display_name": "DDF",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fds_pdc",
        "required": false,
        "param_type": "input",
        "display_name": "FDS/PDC",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fluid_type",
        "required": false,
        "param_type": "input",
        "display_name": "Fluid Type (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "furfural_2_fal",
        "required": false,
        "param_type": "input",
        "display_name": "Furfural-2-FAL",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_inductance",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage Inductance",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "primary_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "primary Voltage (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sfra",
        "required": false,
        "param_type": "input",
        "display_name": "SFRA(Inspection Record)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "transformer_type",
        "required": false,
        "param_type": "input",
        "display_name": "Transformer Type (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "water_content",
        "required": false,
        "param_type": "input",
        "display_name": "Water Content (H2O)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coverage",
        "required": true,
        "param_type": "output",
        "display_name": "Coverage Rate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_d",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Dielectric",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_d_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Dielectric Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_d_warning_generated",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Dielectric Warning",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_m",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Mechnical",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_m_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Mechnical Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_o",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Oil",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_o_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Oil Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_t",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Thermal",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_t_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Thermal Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_status",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "dga_hi",
    "analytic_type_display_name": "Transformer DGA Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "aging_accelaration_factor",
        "required": true,
        "param_type": "input",
        "display_name": "Aging Acceleration Factor",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "feqa",
        "required": true,
        "param_type": "input",
        "display_name": "Equivalent Aging of trafo life (FEQA) in one days or say 24 hours at Ref. 110 cel.",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "per_loss_of_tx_life_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "% Loss of TR life per day (24 hours)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "consumption_of_per_loss_of_life_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "Consumption of % Loss of Life per day (%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "per_hour_eq_load_cycle",
        "required": true,
        "param_type": "input",
        "display_name": "Per hour equivalent load cycles",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_aging",
        "required": true,
        "param_type": "output",
        "display_name": "Aging HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "aging_hi",
    "analytic_type_display_name": "Transformer Aging Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["transformer"],
    "parameters": [{
        "name": "transforme_hi",
        "required": true,
        "param_type": "output",
        "display_name": "Transformer Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dga_hi",
        "required": false,
        "param_type": "input",
        "display_name": "DGA Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_analytics_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD Analytics Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bushing_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Bushing Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "aging_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Aging Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oltc_hi",
        "required": false,
        "param_type": "input",
        "display_name": "OLTC Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "maintank_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Maintank Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "transformer_hi",
    "analytic_type_display_name": "Transformer Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "Cable Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_insulation_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Insulation Health Index",
        "suggested_tag": "INS_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_1_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 1 Health Index",
        "suggested_tag": "JNT1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_2_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 2 Health Index",
        "suggested_tag": "JNT2_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_3_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 3 Health Index",
        "suggested_tag": "JNT3_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_4_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 4 Health Index",
        "suggested_tag": "JNT4_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_5_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 5 Health Index",
        "suggested_tag": "JNT5_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_6_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 6 Health Index",
        "suggested_tag": "JNT6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_7_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 7 Health Index",
        "suggested_tag": "JNT7_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_8_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 8 Health Index",
        "suggested_tag": "JNT8_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_9_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 9 Health Index",
        "suggested_tag": "JNT9_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_10_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 10 Health Index",
        "suggested_tag": "JNT10_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_11_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 11 Health Index",
        "suggested_tag": "JNT11_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_12_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 12 Health Index",
        "suggested_tag": "JNT12_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_13_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 13 Health Index",
        "suggested_tag": "JNT13_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_14_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 14 Health Index",
        "suggested_tag": "JNT14_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_15_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 15 Health Index",
        "suggested_tag": "JNT15_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_16_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 16 Health Index",
        "suggested_tag": "JNT16_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_17_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 17 Health Index",
        "suggested_tag": "JNT17_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_18_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 18 Health Index",
        "suggested_tag": "JNT18_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_19_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 19 Health Index",
        "suggested_tag": "JNT19_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_20_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 20 Health Index",
        "suggested_tag": "JNT20_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_termination_1_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Source Termination Health Index",
        "suggested_tag": "TER1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_termination_2_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Destination Termination Health Index",
        "suggested_tag": "TER2_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_hi",
    "analytic_type_display_name": "Cable Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["transformer"],
    "parameters": [{
        "name": "pd_analytics_hi",
        "required": true,
        "param_type": "output",
        "display_name": "PD Analytics Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_pd_in_mv",
        "required": true,
        "param_type": "input",
        "display_name": "PD magnitude in mV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_in_pd_mag_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "PD magnitude in mV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "repition_rate_of_pd",
        "required": true,
        "param_type": "input",
        "display_name": "Reptation Rate of PD (pps)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_in_repition_rate_of_pd_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "Reptation Rate of PD (pps)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_amp",
        "required": true,
        "param_type": "setting",
        "display_name": "PD Amplitude Max Range",
        "suggested_tag": "",
        "default_value": "2000",
        "settings_value": null
    }],
    "analytic_type": "pd_hi",
    "analytic_type_display_name": "PD Analytics Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_termination_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Cable Termination Health Index",
        "suggested_tag": "TER1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage(kV)",
        "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_rated_voltage",
        "required": true,
        "param_type": "input",
        "display_name": "Voltage(U0) from nameplate",
        "suggested_tag": "RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "TER_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline ROC",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "TER_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature offline",
        "suggested_tag": "TER1_TEMP_MAX_DIFF_AMB_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature online",
        "suggested_tag": "TER1_TEMP_MAX_DIFF_AMB",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature offline",
        "suggested_tag": "TER1_TEMP_DEVP_OFF_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature online",
        "suggested_tag": "TER1_TEMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percent_incremental_sheath_current_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Sheath Current(mA)",
        "suggested_tag": "TER1_SHEATH_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_current_measurement_deviation_percent",
        "required": false,
        "param_type": "input",
        "display_name": "Max deviation load current(%)",
        "suggested_tag": "LOAD_CURR_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "grounding_resistance_near_termination_end",
        "required": false,
        "param_type": "input",
        "display_name": "Grounding resistance near termination end offline(ohm)",
        "suggested_tag": "TER1_GRND_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_jacket",
        "required": false,
        "param_type": "input",
        "display_name": "Cable jacket condition",
        "suggested_tag": "TER1_CBL_JACKET_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Cable supporting structure condition",
        "suggested_tag": "TER1_CBL_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_shield_grounding",
        "required": false,
        "param_type": "input",
        "display_name": "Cable shield grounding condition",
        "suggested_tag": "TER1_SHIELD_GRND_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surface_contamination_on_termination",
        "required": false,
        "param_type": "input",
        "display_name": "Surface contamination on termination condition",
        "suggested_tag": "TER1_SRFC_CONTM_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "svl_condition",
        "required": false,
        "param_type": "input",
        "display_name": "SVL condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rusting",
        "required": false,
        "param_type": "input",
        "display_name": "Rusting condition",
        "suggested_tag": "TER1_RUSTING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_density",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree density",
        "suggested_tag": "TER1_WTR_ELECT_TREE_DENS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_length",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree length",
        "suggested_tag": "TER1_WTR_ELECT_TREE_LNGTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_termination_hi",
    "analytic_type_display_name": "Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
            "name": "cable_termination_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Cable Termination Health Index",
            "suggested_tag": "CBL_COMP_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_inception_voltage",
            "required": false,
            "param_type": "input",
            "display_name": "PD Inception voltage(kV)",
            "suggested_tag": "PD_INCEPT_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_rated_voltage",
            "required": true,
            "param_type": "input",
            "display_name": "Voltage(U0) from nameplate",
            "suggested_tag": "RATED_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature offline",
            "suggested_tag": "TER_TEMP_MAX_DIFF_AMB_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "CBL_TER_TEMP_MAX_DIFF_AMB",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature offline",
            "suggested_tag": "TER_TEMP_DEVP_OFF_MAX_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "TER_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "TER_HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Sheath Current(mA)",
            "suggested_tag": "TER_SHEATH_CURR",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "load_current_measurement_deviation_percent",
            "required": false,
            "param_type": "input",
            "display_name": "Max deviation load current(%)",
            "suggested_tag": "LOAD_CURR_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "TER_GRND_RES_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_jacket",
            "required": false,
            "param_type": "input",
            "display_name": "Cable jacket condition",
            "suggested_tag": "TER_CBL_JACKET_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Cable supporting structure condition",
            "suggested_tag": "TER_CBL_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_shield_grounding",
            "required": false,
            "param_type": "input",
            "display_name": "Cable shield grounding condition",
            "suggested_tag": "TER_SHIELD_GRND_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "surface_contamination_on_termination",
            "required": false,
            "param_type": "input",
            "display_name": "Surface contamination on termination condition",
            "suggested_tag": "TER_SRFC_CONTM_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "33kv_ais_cable_termination_hi",
    "analytic_type_display_name": "33kV AIS Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
            "name": "cable_termination_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Cable Termination Health Index",
            "suggested_tag": "CBL_COMP_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_inception_voltage",
            "required": false,
            "param_type": "input",
            "display_name": "PD Inception voltage(kV)",
            "suggested_tag": "PD_INCEPT_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_rated_voltage",
            "required": true,
            "param_type": "input",
            "display_name": "Voltage(U0) from nameplate",
            "suggested_tag": "RATED_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature offline",
            "suggested_tag": "TER_TEMP_MAX_DIFF_AMB_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "CBL_TER_TEMP_MAX_DIFF_AMB",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature offline",
            "suggested_tag": "TER_TEMP_DEVP_OFF_MAX_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "TER_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "TER_HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Sheath Current(mA)",
            "suggested_tag": "TER_SHEATH_CURR",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "load_current_measurement_deviation_percent",
            "required": false,
            "param_type": "input",
            "display_name": "Max deviation load current(%)",
            "suggested_tag": "LOAD_CURR_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "TER_GRND_RES_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_jacket",
            "required": false,
            "param_type": "input",
            "display_name": "Cable jacket condition",
            "suggested_tag": "TER_CBL_JACKET_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Cable supporting structure condition",
            "suggested_tag": "TER_CBL_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_shield_grounding",
            "required": false,
            "param_type": "input",
            "display_name": "Cable shield grounding condition",
            "suggested_tag": "TER_SHIELD_GRND_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "surface_contamination_on_termination",
            "required": false,
            "param_type": "input",
            "display_name": "Surface contamination on termination condition",
            "suggested_tag": "TER_SRFC_CONTM_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "33kv_gis_cable_termination_hi",
    "analytic_type_display_name": "33kV GIS Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
            "name": "cable_termination_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Cable Termination Health Index",
            "suggested_tag": "CBL_COMP_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_inception_voltage",
            "required": false,
            "param_type": "input",
            "display_name": "PD Inception voltage(kV)",
            "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_rated_voltage",
            "required": true,
            "param_type": "input",
            "display_name": "Voltage(U0) from nameplate",
            "suggested_tag": "RATED_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature offline",
            "suggested_tag": "TER_TEMP_MAX_DIFF_AMB_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "CBL_TER_TEMP_MAX_DIFF_AMB",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature offline",
            "suggested_tag": "TER_TEMP_DEVP_OFF_MAX_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "TER_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "TER_HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Sheath Current(mA)",
            "suggested_tag": "TER_SHEATH_CURR",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "load_current_measurement_deviation_percent",
            "required": false,
            "param_type": "input",
            "display_name": "Max deviation load current(%)",
            "suggested_tag": "LOAD_CURR_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "TER_GRND_RES_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_jacket",
            "required": false,
            "param_type": "input",
            "display_name": "Cable jacket condition",
            "suggested_tag": "TER_CBL_JACKET_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Cable supporting structure condition",
            "suggested_tag": "TER_CBL_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_shield_grounding",
            "required": false,
            "param_type": "input",
            "display_name": "Cable shield grounding condition",
            "suggested_tag": "TER_SHIELD_GRND_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "surface_contamination_on_termination",
            "required": false,
            "param_type": "input",
            "display_name": "Surface contamination on termination condition",
            "suggested_tag": "TER_SRFC_CONTM_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "220kv_gis_cable_termination_hi",
    "analytic_type_display_name": "220kV GIS Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_joint_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Cable Joint Health Index",
        "suggested_tag": "JNT1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage(kV)",
        "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_rated_voltage",
        "required": true,
        "param_type": "input",
        "display_name": "Voltage(U0) from nameplate",
        "suggested_tag": "KV_RATING_U0",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "JNT1_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline ROC",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "JNT1_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature offline",
        "suggested_tag": "JNT1_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient temperature offline",
        "suggested_tag": "JNT1_AMB_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature online",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature offline",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature online",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percent_incremental_sheath_current_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Sheath Current(mA)",
        "suggested_tag": "JNT1_SHEATH_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "grounding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Grounding resistance offline(ohm)",
        "suggested_tag": "JNT1_GRND_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_jacket",
        "required": false,
        "param_type": "input",
        "display_name": "Cable jacket condition",
        "suggested_tag": "JNT1_CBL_JACKET_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Cable supporting structure condition",
        "suggested_tag": "JNT1_CBL_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_shield_grounding",
        "required": false,
        "param_type": "input",
        "display_name": "Cable shield grounding condition",
        "suggested_tag": "JNT1_SHIELD_GRND_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_grounding_connection",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole grounding condition",
        "suggested_tag": "JNT1_MANHOLE_GRND_CONNECT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_water_ingression",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole water ingression condition",
        "suggested_tag": "JNT1_MANHOLE_WRT_INGRS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_ventilation",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole ventilation condition",
        "suggested_tag": "JNT1_MANHOLE_VENTI_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "joint_earthing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Joint earthing condition",
        "suggested_tag": "JNT1_ERTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_from_oil_filled_joint",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage from oil filled joint condition",
        "suggested_tag": "JNT1_LEAK_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "svl_condition",
        "required": false,
        "param_type": "input",
        "display_name": "SVL condition",
        "suggested_tag": "JNT1_SVL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rusting",
        "required": false,
        "param_type": "input",
        "display_name": "Rusting condition",
        "suggested_tag": "JNT1_RUSTING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_density",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree density",
        "suggested_tag": "JNT1_WTR_ELECT_TREE_DENS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_length",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree length",
        "suggested_tag": "JNT1_WTR_ELECT_TREE_LNGTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_joint_hi",
    "analytic_type_display_name": "Cable Joint Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_insulation_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Cable Insulation Health Index",
        "suggested_tag": "INS_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage(kV)",
        "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_rated_voltage",
        "required": true,
        "param_type": "input",
        "display_name": "Rated voltage(U0) from nameplate",
        "suggested_tag": "KV_RATING_U0",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "INS_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline ROC",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "INS_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature offline",
        "suggested_tag": "CBL_TEMP_DIFF_AMB_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature online",
        "suggested_tag": "CBL_TEMP_MAX_DIFF_AMB",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_current_measurement_deviation_percent",
        "required": false,
        "param_type": "input",
        "display_name": "Max deviation load current(%)",
        "suggested_tag": "LOAD_CURR_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_jacket",
        "required": false,
        "param_type": "input",
        "display_name": "Cable jacket condition",
        "suggested_tag": "INS_CBL_JACKET_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Cable supporting structure condition",
        "suggested_tag": "INS_CBL_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_cable_cellar_grounding_connection",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole/Cable cellar grounding connection condition",
        "suggested_tag": "INS_MANHOLE_GRND_CONNECT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_cable_cellar_water_ingression",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole/Cable cellar water ingression condition",
        "suggested_tag": "INS_MANHOLE_WRT_INGRS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_cable_cellar_ventilation",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole/Cable cellar ventilation condition",
        "suggested_tag": "INS_MANHOLE_VENTI_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_density",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree density",
        "suggested_tag": "INS_WTR_ELECT_TREE_DENS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_length",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree length",
        "suggested_tag": "INS_WTR_ELECT_TREE_LNGTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation resistance measurement",
        "suggested_tag": "CBL_INS_RES_AT_1MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "kV Rating from nameplate",
        "suggested_tag": "RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance measurement deviation",
        "suggested_tag": "CBL_LOAD_CAP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_at_U0",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta at U0",
        "suggested_tag": "CBL_MEAN_TAND_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_tip_up",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta tip up",
        "suggested_tag": "CBL_MEAN_TAND_TIPUP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_stability_at_U0",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta stability at U0",
        "suggested_tag": "CBL_STD_DEV_TAND_AT_U0_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ac_withstand_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "AC withstand measurement",
        "suggested_tag": "AC_WTHSTAND_MEAS_MAX_TEST_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "time_domain_reflectometry",
        "required": false,
        "param_type": "input",
        "display_name": "Time domain reflectometry",
        "suggested_tag": "TDR_LIRA_WORST_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "polarization_depolarization_current",
        "required": false,
        "param_type": "input",
        "display_name": "Polarization/Depolarization current",
        "suggested_tag": "PC_DC_IRC_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "comm_date",
        "required": false,
        "param_type": "input",
        "display_name": "Commissioning date",
        "suggested_tag": "COMM_DATE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_current",
        "required": false,
        "param_type": "input",
        "display_name": "Load current",
        "suggested_tag": "PH_B_LOAD_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_current",
        "required": false,
        "param_type": "input",
        "display_name": "Rated load current from nameplate",
        "suggested_tag": "RATED_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "failure_total",
        "required": false,
        "param_type": "input",
        "display_name": "Total times of failure",
        "suggested_tag": "NO_OF_FAILURE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "repairation_total",
        "required": false,
        "param_type": "input",
        "display_name": "Total times of repairation",
        "suggested_tag": "NO_OF_REPAIRATION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "network_reliability",
        "required": false,
        "param_type": "input",
        "display_name": "Network reliability",
        "suggested_tag": "NETWORK_REL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "length",
        "required": false,
        "param_type": "input",
        "display_name": "Cable length",
        "suggested_tag": "CBL_LENGTH",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operational_environment",
        "required": false,
        "param_type": "input",
        "display_name": "Operational Environment",
        "suggested_tag": "OPT_ENVIRONMNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_pd_faults_identified",
        "required": false,
        "param_type": "input",
        "display_name": "Cable PD fault identified",
        "suggested_tag": "MAX_PD_DETCTD_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_insulation_hi",
    "analytic_type_display_name": "Cable Insulation Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_stator_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Stator Health Index",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "STR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "polarization_index",
        "required": false,
        "param_type": "input",
        "display_name": "Polarization Index",
        "suggested_tag": "STR_PI_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "di_electric_discharge",
        "required": false,
        "param_type": "input",
        "display_name": "Di-electric discharge",
        "suggested_tag": "STR_DIEL_DIS_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tand_test",
        "required": false,
        "param_type": "input",
        "display_name": "TanD test",
        "suggested_tag": "MTR_TAND_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cap_test",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Test",
        "suggested_tag": "MTR_CAP_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_tip_up",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta tip up",
        "suggested_tag": "TAN_DELTA_TIP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "elcid",
        "required": false,
        "param_type": "input",
        "display_name": "ELCID (mA)",
        "suggested_tag": "ELCID_CL_FL_OF_CC_FOR_EACH_SLOT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "STR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_inductance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Inductance",
        "suggested_tag": "STR_WNDG_IND_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_impedance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Impedance",
        "suggested_tag": "STR_WNDG_IMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "phase_angle",
        "required": false,
        "param_type": "input",
        "display_name": "Phase angle",
        "suggested_tag": "STR_ANGL_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_frequency_response",
        "required": false,
        "param_type": "input",
        "display_name": "Current frequency response",
        "suggested_tag": "STR_CFR_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Ratio",
        "suggested_tag": "CAP_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "reabsorption_current_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Reabsorption current ratio",
        "suggested_tag": "REABS_CURR_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "absorption_index",
        "required": false,
        "param_type": "input",
        "display_name": "Absorption Index",
        "suggested_tag": "ABS_INDEX_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_current_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage current ratio",
        "suggested_tag": "LEAK_CURR_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surge_test_error_area_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Surge test error area ratio",
        "suggested_tag": "SURGE_ERROR_VAR_CURR_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_stator_hi",
    "analytic_type_display_name": "Motor Stator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_rotor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Rotor Health Index",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "RTR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "RTR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_inductance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Inductance",
        "suggested_tag": "RTR_WNDG_IND_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_impedance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Impedance",
        "suggested_tag": "RTR_WNDG_IMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "phase_angle",
        "required": false,
        "param_type": "input",
        "display_name": "Phase angle",
        "suggested_tag": "RTR_ANGL_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_frequency_response",
        "required": false,
        "param_type": "input",
        "display_name": "Current frequency response",
        "suggested_tag": "RTR_CFR_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_rotor_hi",
    "analytic_type_display_name": "Motor Rotor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_sensor_testing_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Sensor Testing Health Index",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition IR",
        "suggested_tag": "STR_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition IR",
        "suggested_tag": "EXC_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition IR",
        "suggested_tag": "SPACE_HEATER_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition IR",
        "suggested_tag": "BRNG_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition Winding Resistance values",
        "suggested_tag": "STR_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition Winding Resistance values",
        "suggested_tag": "EXC_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition Winding Resistance values",
        "suggested_tag": "SPACE_HEATER_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition Winding Resistance values",
        "suggested_tag": "BRNG_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_sensor_testing_hi",
    "analytic_type_display_name": "Motor Sensor Testing Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_sensor_testing_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Generator Sensor Testing Health Index",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition IR",
        "suggested_tag": "STR_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition IR",
        "suggested_tag": "EXC_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition IR",
        "suggested_tag": "SPACE_HEATER_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition IR",
        "suggested_tag": "BRNG_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_inlet_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Inlet RTD condition (IR)",
        "suggested_tag": "CLNG_INLET_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_outlet_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Outlet RTD condition (IR)",
        "suggested_tag": "CLNG_OUTLET_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "core_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Core RTD condition (IR)",
        "suggested_tag": "CORE_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Oil RTD condition (IR)",
        "suggested_tag": "OIL_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition Winding Resistance values",
        "suggested_tag": "STR_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition Winding Resistance values",
        "suggested_tag": "EXC_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition Winding Resistance values",
        "suggested_tag": "SPACE_HEATER_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition Winding Resistance values",
        "suggested_tag": "BRNG_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_inlet_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Inlet RTD condition (Winding Resistance)",
        "suggested_tag": "CLNG_INLET_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_outlet_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Cooilng Outlet RTD condition (Winding Resistance)",
        "suggested_tag": "CLNG_OUTLET_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "core_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Core RTD condition (Winding Resistance)",
        "suggested_tag": "CORE_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Oil RTD condition (Winding Resistance)",
        "suggested_tag": "OIL_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_sensor_testing_hi",
    "analytic_type_display_name": "Generator Sensor Testing Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
            "name": "vibration_analytics_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Vibration Analytics Health Index",
            "suggested_tag": "VIB_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "vibration_measurement_de_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement DE Offline",
            "suggested_tag": "GEN_DE_SIDE_MAX_VEL_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "vibration_measurement_de_online",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement DE Online",
            "suggested_tag": "GEN_DE_SIDE_MAX_VEL",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "vibration_measurement_nde_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement NDE Offline",
            "suggested_tag": "GEN_NDE_SIDE_MAX_VEL_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "vibration_measurement_nde_online",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement NDE Online",
            "suggested_tag": "GEN_NDE_SIDE_MAX_VEL",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "vibration_analytics_hi",
    "analytic_type_display_name": "Vibration Analytics Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_temperature_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Temperature Health Index",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement",
        "suggested_tag": "IR_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_hotspot_by_ir_thermography",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement(hotspot by IR thermography)",
        "suggested_tag": "IR_HOTSPOT_DETCTD_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity",
        "suggested_tag": "HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "other_rtds_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Other RTDs Max Standard Deviation (Core, oil, heater etc.)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_terminal_box",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (Terminal box)",
        "suggested_tag": "TERMNL_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_temperature_hi",
    "analytic_type_display_name": "Motor Temperature Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_temperature_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Temperature Health Index",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement",
        "suggested_tag": "IR_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_hotspot_by_ir_thermography",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement(hotspot by IR thermography)",
        "suggested_tag": "IR_HOTSPOT_DETCTD_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity",
        "suggested_tag": "HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "other_rtds_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Other RTDs Max Standard Deviation (Core, exicter, heater etc.)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_terminal_box",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (Terminal box)",
        "suggested_tag": "TERMNL_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_temperature_hi",
    "analytic_type_display_name": "Generator Temperature Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
        "name": "motor_generator_csa_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "CSA Health Index",
        "suggested_tag": "CSA_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_signature_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Current signature measurement",
        "suggested_tag": "EQUIP_STATUS",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_generator_csa_hi",
    "analytic_type_display_name": "CSA Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
        "name": "motor_generator_pd_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "PD Analytics Health Index",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "partial_discharge_test",
        "required": false,
        "param_type": "input",
        "display_name": "Partial discharge test (pC)",
        "suggested_tag": "PD_MAX_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "internal_discharge_distributed_micro_voids",
        "required": false,
        "param_type": "input",
        "display_name": "Internal discharge : Distributed micro voids",
        "suggested_tag": "PD_DIST_VOID",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "internal_discharge_delamination",
        "required": false,
        "param_type": "input",
        "display_name": "Internal discharge : Delamination",
        "suggested_tag": "PD_DIST_DELAM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "internal_discharge_debonding",
        "required": false,
        "param_type": "input",
        "display_name": "Internal discharge : Debonding",
        "suggested_tag": "PD_DEBOND",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "slot_discharge_poor_contact",
        "required": false,
        "param_type": "input",
        "display_name": "Slot discharge : Poor contact",
        "suggested_tag": "PD_POOR_CNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "slot_discharge_vibration_sparking",
        "required": false,
        "param_type": "input",
        "display_name": "Slot discharge : Vibration sparking",
        "suggested_tag": "PD_VIB_SPARK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "end_winding_bar_to_bar",
        "required": false,
        "param_type": "input",
        "display_name": "End winding gap and surface discharge : Bar to bar",
        "suggested_tag": "PD_END_WNDG_GAP_SRFC_BAR_TO_BAR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "end_winding_bar_to_ground",
        "required": false,
        "param_type": "input",
        "display_name": "End winding gap and surface discharge : Bar to ground",
        "suggested_tag": "PD_END_WNDG_GAP_SRFC_BAR_TO_GRND",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "end_winding_bar_to_surface",
        "required": false,
        "param_type": "input",
        "display_name": "End winding gap and surface discharge : Surface discharge",
        "suggested_tag": "PD_END_WNDG_GAP_SRFC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "foreign_conductive_materials",
        "required": false,
        "param_type": "input",
        "display_name": "Foreign Coductive Materials: PD from Conductive particles",
        "suggested_tag": "PD_FCM_CONDUCT_PARTCL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage",
        "suggested_tag": "PD_INCEPT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_rated_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Rated voltage U0 from nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_generator_pd_hi",
    "analytic_type_display_name": "Motor/Generator PD Analytics Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
        "name": "motor_generator_condition_factor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Condition Factor Health Index",
        "suggested_tag": "AGE_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "time_duration_since_last_maintenance",
        "required": false,
        "param_type": "input",
        "display_name": "Time duration since last maintenance",
        "suggested_tag": "TIME_DUR_SINCE_LAST_MAINT_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "machine_age",
        "required": false,
        "param_type": "input",
        "display_name": "Machine Age (Commissioning date)",
        "suggested_tag": "COMM_DATE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_body_terminal_box_bushing_cleaning_and_blowering_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Motor body, terminal Box & Bushing. (Cleaning and Blowering) condition",
        "suggested_tag": "GEN_BODY_DUST_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nde_side_fan_cover_fan_cleaning_cleaning_blowering_condition",
        "required": false,
        "param_type": "input",
        "display_name": "NDE side fan cover & Fan cleaning (Cleaning and Blowering) condition",
        "suggested_tag": "NDE_SIDE_FANCOVER_CLEANING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "checking_tightness_of_all_terminals_power_cable_side_star_point_side_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Checking tightness of all terminals (Power cable side & star point side) condition",
        "suggested_tag": "TGHTNESS_OF_TERMNL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_nde_de_side_bearing_grease_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check NDE & DE side Bearing grease condition",
        "suggested_tag": "NDE_DE_SIDE_BEARING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rtd_btd_conditions_connection_tightness_check_condition",
        "required": false,
        "param_type": "input",
        "display_name": "RTD & BTD conditions & Connection tightness check condition",
        "suggested_tag": "RTD_BTD_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "space_heater_connection_resistance_check_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Space Heater connection & Resistance check condition",
        "suggested_tag": "SPACE_HEATR_CONN_RES_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_body_earthing_single_double_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Body Earthing(Single/Double) condition",
        "suggested_tag": "GEN_BODY_EARTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "terminal_box_earthing_main_star_side_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Terminal box Earthing (Main& Star Side) condition",
        "suggested_tag": "TERMNL_BOX_EARTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_frp_coating_over_cable_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check FRP coating over cable condition",
        "suggested_tag": "FRP_COATING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_physical_condition_of_lugs_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check Physical condition of Lugs condition",
        "suggested_tag": "LUGS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_proper_fixing_support_clamping_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of cable proper fixing & support clamping",
        "suggested_tag": "CBL_FIX_CLAMP_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_proper_dressing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of cable proper dressing",
        "suggested_tag": "CBL_DRESSING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_tightness_of_cable_termination_motor_end_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check tightness of cable termination. (Motor end) condition",
        "suggested_tag": "CBL_TGHTNESS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_availability_of_bimetallic_strip_washer_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check availability of bimetallic strip/Washer condition",
        "suggested_tag": "BIMETALLLICSTRIP_WASHER_AVAILAB_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "temp_sticker_sensors_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check Condition of Temp. Sticker/sensors",
        "suggested_tag": "TEMP_STICKER_SENSORS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vibration_sensor_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of vibration sensor",
        "suggested_tag": "VIB_SENSORS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hole_sealing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check hole sealing condition",
        "suggested_tag": "SEALING_HOLE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "space_heater_circuit_resistance_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Space Heater circuit Resistance condition",
        "suggested_tag": "SPACE_HEATR_CIRCT_RES_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "regreasing_on_the_bearing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Regreasing/Relubrication on the bearing condition",
        "suggested_tag": "REGREASE_RELUB_ON_BEARING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "condition_of_insulation_visual",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of Insulation(Visual)",
        "suggested_tag": "INS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "repair_of_machine",
        "required": false,
        "param_type": "input",
        "display_name": "Repairation times of machine",
        "suggested_tag": "NO_OF_REPAIRATION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_load",
        "required": false,
        "param_type": "input",
        "display_name": "Current load",
        "suggested_tag": "PH_B_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_current",
        "required": false,
        "param_type": "input",
        "display_name": "Rated current from nameplate",
        "suggested_tag": "RATED_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operational_environment",
        "required": false,
        "param_type": "input",
        "display_name": "Operational environment from nameplate",
        "suggested_tag": "OPT_ENVIRONMNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "user_experience_with_oem_of_motor",
        "required": false,
        "param_type": "input",
        "display_name": "User Experience with OEM of the Motor",
        "suggested_tag": "USER_EXP_OEM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "lubrication_time_interval",
        "required": false,
        "param_type": "input",
        "display_name": "Lubrication time interval (hours) from nameplate",
        "suggested_tag": "LUB_TIME_INTV_HRS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "date_of_last_lubrication",
        "required": false,
        "param_type": "input",
        "display_name": "Date of last lubrication",
        "suggested_tag": "LAST_TIME_LUB",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_generator_condition_factor_hi",
    "analytic_type_display_name": "Condition Factor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_flux_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Flux Health Index",
        "suggested_tag": "FLUX_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flux_monitoring",
        "required": false,
        "param_type": "input",
        "display_name": "Flux Monitoring",
        "suggested_tag": "FLUX_ANALYTICS",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_flux_hi",
    "analytic_type_display_name": "Flux Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Stator HI",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotor_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Rotor HI",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sensor_testing_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Sensor Testing HI",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vibration_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Vibration Analytics HI",
        "suggested_tag": "VIB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "temp_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Temperature HI",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "csa_hi",
        "required": false,
        "param_type": "input",
        "display_name": "CSA HI",
        "suggested_tag": "CSA_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD Analytics HI",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "age_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Ageing HI",
        "suggested_tag": "AGE_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_hi",
    "analytic_type_display_name": "Motor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Generator Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Stator HI",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotor_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Rotor HI",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sensor_testing_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Sensor Testing HI",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vibration_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Vibration Analytics HI",
        "suggested_tag": "VIB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "temp_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Temperature HI",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "csa_hi",
        "required": false,
        "param_type": "input",
        "display_name": "CSA HI",
        "suggested_tag": "CSA_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD Analytics HI",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "age_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Ageing HI",
        "suggested_tag": "AGE_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flux_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Flux HI",
        "suggested_tag": "FLUX_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_hi",
    "analytic_type_display_name": "Generator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_stator_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Generator Stator Health Index",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "STR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "polarization_index",
        "required": false,
        "param_type": "input",
        "display_name": "Polarization index",
        "suggested_tag": "STR_PI_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t1_ion_migration_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T1 (ION MIGRATION TIME CONSTANT) (secs)",
        "suggested_tag": "STR_T1_ION_MIG_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tand_test",
        "required": false,
        "param_type": "input",
        "display_name": "TanD test",
        "suggested_tag": "GEN_TAND_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cap_test",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance test",
        "suggested_tag": "GEN_CAP_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_tip_up",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta tip up",
        "suggested_tag": "TAN_DELTA_TIP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t2_slow_relaxation_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T2 (SLOW RELAXATION TIME CONSTANT) (secs)",
        "suggested_tag": "STR_T2_SLW_RLX_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t3_interfacial_polarization_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T3 (INTERFACIAL POLARIZATION TIME CONSTANT) (secs)",
        "suggested_tag": "STR_T3_INT_PLRZ_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "elcid",
        "required": false,
        "param_type": "input",
        "display_name": "ELCID (mA)",
        "suggested_tag": "ELCID_CL_FL_OF_CC_FOR_EACH_SLOT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "STR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_charge_ion_migration",
        "required": false,
        "param_type": "input",
        "display_name": "Q1 (CHARGE - ION MIGRATION) [%] ",
        "suggested_tag": "STR_Q1_ION_MIG_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_charge_slow_relaxation",
        "required": false,
        "param_type": "input",
        "display_name": "Q2 (CHARGE - SLOW RELAXATION) [%]",
        "suggested_tag": "STR_Q2_SLW_RLX_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q3_charge_interfacial_polarization",
        "required": false,
        "param_type": "input",
        "display_name": "Q3 (CHARGE - INTERFACIAL POLARIZATION) [%]",
        "suggested_tag": "STR_Q3_INT_PLRZ_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_q2",
        "required": false,
        "param_type": "input",
        "display_name": "Q1/Q2",
        "suggested_tag": "STR_Q1_Q2_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_q3",
        "required": false,
        "param_type": "input",
        "display_name": "Q2/Q3",
        "suggested_tag": "STR_Q2_Q3_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co_c",
        "required": false,
        "param_type": "input",
        "display_name": "Co/C (DISPERSION RATIO)",
        "suggested_tag": "STR_DISP_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_highpot_test",
        "required": false,
        "param_type": "input",
        "display_name": "DC Highpot test[Leakage current value (micro amp)]",
        "suggested_tag": "DC_HIPOT_LEAKAGE_CURR_DEVP_MAX_AT_TV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance_ac_exciter_field_winding",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance (R) AC Exciter Field Winding",
        "suggested_tag": "AC_EXC_FLD_WNDG_INS_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance_exciter_armature_winding",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance (R) Exciter Armature Winding",
        "suggested_tag": "AC_EXC_ARM_WNDG_INS_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance_pmg_stator_winding",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance (R) PMG Stator Winding",
        "suggested_tag": "PMG_STR_WNDG_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_for_exciter_stator",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance for Excitor stator",
        "suggested_tag": "STR_EXC_INS_RES_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_for_exciter_rotor",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance for Excitor Rotor",
        "suggested_tag": "RTR_EXC_INS_RES_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_for_pmg",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance for PMG",
        "suggested_tag": "PMG_INS_RES_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "forward_bias_diode_check",
        "required": false,
        "param_type": "input",
        "display_name": "Forward bias Diode check",
        "suggested_tag": "FRWD_BIAS_DIODE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "reverse_bias_diode_check",
        "required": false,
        "param_type": "input",
        "display_name": "Reverse bias Diode check",
        "suggested_tag": "REVS_BIAS_DIODE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_stator_hi",
    "analytic_type_display_name": "Generator Stator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_rotor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "generator Rotor Health Index",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "RTR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "RTR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotor_impedance_test_abs_max_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Rotor Impedance test Abs Max Deviation",
        "suggested_tag": "RTR_IMP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t1_ion_migration_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T1 (ION MIGRATION TIME CONSTANT) [secs]",
        "suggested_tag": "RTR_T1_ION_MIG_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t2_slow_releaxation_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T2 (SLOW RELAXATION TIME CONSTANT) [secs]",
        "suggested_tag": "RTR_T2_SLW_RLX_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t3_interfacial_polarization_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T3 (INTERFACIAL POLARIZATION TIME CONSTANT) [secs]",
        "suggested_tag": "RTR_T3_INT_PLRZ_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_charge_ion_migration",
        "required": false,
        "param_type": "input",
        "display_name": "Q1 (CHARGE - ION MIGRATION) [%]",
        "suggested_tag": "RTR_Q1_ION_MIG_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_charge_slow_releaxation",
        "required": false,
        "param_type": "input",
        "display_name": "Q2 (CHARGE - SLOW RELAXATION) [%]",
        "suggested_tag": "RTR_Q2_SLW_RLX_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q3_charge_interfacial_polarization",
        "required": false,
        "param_type": "input",
        "display_name": "Q3 (CHARGE - INTERFACIAL POLARIZATION) [%]",
        "suggested_tag": "RTR_Q3_INT_PLRZ_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_q2_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Q1/Q2",
        "suggested_tag": "RTR_Q1_Q2_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_q3_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Q2/Q3",
        "suggested_tag": "RTR_Q2_Q3_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dispersion_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Co/C (DISPERSION RATIO)",
        "suggested_tag": "RTR_DISP_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_rotor_hi",
    "analytic_type_display_name": "Generator Rotor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
        "name": "33kv_ais_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV AIS Circuit Breaker Health Index",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_resistance_measurement_of_contact",
        "required": false,
        "param_type": "input",
        "display_name": "Static resistance measurement of contact",
        "suggested_tag": "CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_time",
        "required": false,
        "param_type": "input",
        "display_name": "Close time (absolute value)",
        "suggested_tag": "CLOSING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_time",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil-1 time",
        "suggested_tag": "TRIPPING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_time",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 time  (absolute value)",
        "suggested_tag": "BACKUP_TRIP_COIL_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_of_each_pole_respect_to_body",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance of each pole respect to body (in close condition)",
        "suggested_tag": "BR_CH_INS_RES_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "opening timing diffrence",
        "suggested_tag": "OPEN_TIME_MAX_DIFF_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "closing_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "closing timing difference",
        "suggested_tag": "CLOSE_TIME_DIFF_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "CLOSE_COIL_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "MTR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "K1_CONTACTOR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_COIL_CURR_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_COIL_CURR_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_COIL_CURR_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "power_cable_terminations",
        "required": false,
        "param_type": "input",
        "display_name": "Power Cable terminations",
        "suggested_tag": "POWER_CBL_TERM_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_transformer",
        "required": false,
        "param_type": "input",
        "display_name": "Current transformer",
        "suggested_tag": "CT_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vcb_jaw_contacts_offline",
        "required": false,
        "param_type": "input",
        "display_name": "VCB Jaw Contacts offline",
        "suggested_tag": "VCB_JAW_CNT_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vcb_jaw_contacts_online",
        "required": false,
        "param_type": "input",
        "display_name": "VCB Jaw Contacts online",
        "suggested_tag": "VCB_JAW_CNT_TEMP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "high_voltage_withstand_of_contacts_phA",
        "required": false,
        "param_type": "input",
        "display_name": "High voltage withstand of contacts Phase A",
        "suggested_tag": "HV_PHASE_A",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "high_voltage_withstand_of_contacts_phB",
        "required": false,
        "param_type": "input",
        "display_name": "High voltage withstand of contacts Phase B",
        "suggested_tag": "HV_PHASE_B",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "high_voltage_withstand_of_contacts_phC",
        "required": false,
        "param_type": "input",
        "display_name": "High voltage withstand of contacts Phase C",
        "suggested_tag": "HV_PHASE_C",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "counter_reading",
        "required": false,
        "param_type": "input",
        "display_name": "COUNTER READING",
        "suggested_tag": "COUNTER_READING_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_op",
        "required": false,
        "param_type": "input",
        "display_name": "MAX OPERATION COUNT",
        "suggested_tag": "CB_MAX_OPT_COUNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roller_gap",
        "required": false,
        "param_type": "input",
        "display_name": "ROLLER GAP",
        "suggested_tag": "ROLLER_GAP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "damping_gap",
        "required": false,
        "param_type": "input",
        "display_name": "DAMPING GAP",
        "suggested_tag": "DAMPING_GAP_GO_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_measurement_using_tev",
        "required": false,
        "param_type": "input",
        "display_name": "PD measurement using TEV",
        "suggested_tag": "TEV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_measurement_using_capacitive_probes",
        "required": false,
        "param_type": "input",
        "display_name": "PD measurement using Capacitive probes",
        "suggested_tag": "CAPACITIVE_PROBE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "PD measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vacuum_bottle_high_voltage_test",
        "required": false,
        "param_type": "input",
        "display_name": "Vaccum bottleHigh voltage test",
        "suggested_tag": "VACC_BOTTLE_HIPOT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "reference_high_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Reference High Voltage",
        "suggested_tag": "VACC_BOTTLE_HIPOT_REF_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vacuum_bottle_pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Vaccum bottle pressure",
        "suggested_tag": "VI_PRESS_MAX",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_ais_cb_hi",
    "analytic_type_display_name": "33kV AIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
        "name": "33kv_gis_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS Circuit Breaker Health Index",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_time",
        "required": false,
        "param_type": "input",
        "display_name": "Close time (absolute value)",
        "suggested_tag": "CLOSING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_time",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil-1 time",
        "suggested_tag": "TRIPPING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_time",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 time  (absolute value)",
        "suggested_tag": "BACKUP_TRIP_COIL_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "Max contact travel",
        "suggested_tag": "MAX_CNT_TRAVL_DISTANCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "opening timing diffrence",
        "suggested_tag": "OPEN_TIME_MAX_DIFF_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "closing_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "closing timing difference",
        "suggested_tag": "CLOSE_TIME_DIFF_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "CLOSE_COIL_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "MTR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "K1_CONTACTOR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_COIL_CURR_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_COIL_CURR_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_COIL_CURR_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "AUX_SUPPLY_VOLT_DC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relay_and_control_function",
        "required": false,
        "param_type": "input",
        "display_name": "Relay & control function, Indicators check",
        "suggested_tag": "RELAY_AND_CNTRL_FUNC_INDICATOR_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_error_with_referance_gauge",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage error with reference gauge(pressure, density, moisture any)",
        "suggested_tag": "PERC_ERROR_OF_GUAGE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_gis_cb_hi",
    "analytic_type_display_name": "33kV GIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
        "name": "33kv_gis_sf6_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS SF6 Health Index",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_measured",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressure measured",
        "suggested_tag": "CH_SF6_PRESS_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_of_chamber",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressured of chamber",
        "suggested_tag": "CH_SF6_PRESS_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_density_measured_in_busbar",
        "required": false,
        "param_type": "input",
        "display_name": "Gas density Measured in Busbar",
        "suggested_tag": "BB_CH_SF6_DENS_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vacuum_interrupter_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Vacuum Interrupter Condition",
        "suggested_tag": "VCB_INTERRUPT_SF6_PRESS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_sf6_gas_leakage_per_year",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage SF 6 gas Leakage per year",
        "suggested_tag": "CH_SF6_LR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dew_point_measurement_of_sf6_gas",
        "required": false,
        "param_type": "input",
        "display_name": "Dew Point Measurement of SF6 Gas",
        "suggested_tag": "DEW_POINT_POLE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_purity",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 Purity",
        "suggested_tag": "CB_SF6_PURITY_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_gis_sf6_hi",
    "analytic_type_display_name": "33kV GIS SF6 Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "220kv_gis_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV GIS Circuit Breaker Health Index",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_time",
        "required": false,
        "param_type": "input",
        "display_name": "Close time (absolute value)",
        "suggested_tag": "CLOSING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_time",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil-1 time",
        "suggested_tag": "TRIPPING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_time",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 time  (absolute value)",
        "suggested_tag": "BACKUP_TRIP_COIL_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "Max contact travel",
        "suggested_tag": "CNT_TRAVEL_DIST_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "opening timing diffrence",
        "suggested_tag": "OPEN_TIME_MAX_DIFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "closing_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "closing timing difference",
        "suggested_tag": "CLOSE_TIME_DIFF_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52a_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52A contact switching time",
        "suggested_tag": "CB_52A_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52b_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52B contact switching time",
        "suggested_tag": "CB_52B_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Total Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "MAX_COIL_RES_CLOSE_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "MAX_COIL_RES_OPEN1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "MAX_COIL_RES_OPEN2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "SPRING_CHRG_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "CONTCTR_WNDG_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_OPEN_COIL1_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_OPEN_COIL2_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_CLOSE_COIL_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "AUX_SUPPLY_VOLT_DC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL1_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL2_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "CB_AMB_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "atm_humidity_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Atm. Humidity measurement",
        "suggested_tag": "ATM_HUMIDITY_MES",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relay_and_control_function",
        "required": false,
        "param_type": "input",
        "display_name": "Relay & control function, Indicators check",
        "suggested_tag": "RELAY_AND_CNTRL_FUNC_INDICATOR_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_error_with_referance_gauge",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage error with reference gauge(pressure, density, moisture any)",
        "suggested_tag": "PERC_ERROR_OF_GUAGE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wiring_and_relays_condition_in_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Wiring & Relays Conditions in cubical, Control cubical (LCC Panel)",
        "suggested_tag": "WIRING_RELAY_CNTRL_CUBICAL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_cb_hi",
    "analytic_type_display_name": "220kV GIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "220kv_gis_sf6_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV GIS SF6 Health Index",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_measured",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressure measured",
        "suggested_tag": "CH_SF6_PRESS_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_of_chamber",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressured of chamber",
        "suggested_tag": "CB_CH_SF6_PRESS_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_density_measured_in_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "Gas density Measured in each CB pole",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_sf6_gas_leakage_per_year",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage SF 6 gas Leakage per year",
        "suggested_tag": "CH_SF6_LR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dew_point_measurement_of_sf6_gas",
        "required": false,
        "param_type": "input",
        "display_name": "Dew Point Measurement of SF6 Gas",
        "suggested_tag": "DEW_POINT_POLE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_purity",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 Purity",
        "suggested_tag": "CB_SF6_PURITY_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity_content_in_sf6",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity content in SF6(ppmv) (with CB)",
        "suggested_tag": "REL_HUMIDITY_POLE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_sf6_hi",
    "analytic_type_display_name": "220kV GIS SF6 Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "pd_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV GIS PD Health Index",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_pattern_and_growth",
        "required": false,
        "param_type": "input",
        "display_name": " PD Pattern & PD Growth",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_pd_hi",
    "analytic_type_display_name": "220kV GIS PD Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
        "name": "33kv_ais_busbar_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV AIS Busbar Health Index",
        "suggested_tag": "BB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_pattern_and_pd_growth",
        "required": false,
        "param_type": "input",
        "display_name": "PD Pattern & PD Growth",
        "suggested_tag": "PD_PATTERN_GROWTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp",
        "required": false,
        "param_type": "input",
        "display_name": "PD Amplitude & Pattern",
        "suggested_tag": "BB_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp",
        "required": false,
        "param_type": "input",
        "display_name": "PD Amplitude & Pattern ROC",
        "suggested_tag": "BB_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp",
        "required": false,
        "param_type": "input",
        "display_name": "IR/FO:Thermography (∆T phase- Ambient temp.) C",
        "suggested_tag": "BB_TEMP_DIFF_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity",
        "suggested_tag": "BB_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surface_contamination_on_busbar",
        "required": false,
        "param_type": "input",
        "display_name": "Surface contamination on Busbar",
        "suggested_tag": "BB_SRFC_CONTM_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "busbar_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Busbar supporting structure",
        "suggested_tag": "BB_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_all_interpanel_gaps_are_sealed",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that all interpanel gaps are sealed",
        "suggested_tag": "PANEL_GAP_SEALED_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_all_exposed_busbar_connecting_joints_are_tited",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that all exposed busbar connecting joints are tited with insulation boots or taped properly",
        "suggested_tag": "BB_CONN_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_no_tools_or_loose_parts_are_left_inside_any_compartment",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that no tools or loose parts are left inside any compartment",
        "suggested_tag": "TOOLS_LOOSE_PART_LEFT_COMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_all_main_and_earth_connections_are_tight_and_good_contact_is_maintained",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that all main & earth connections are tight and that good contact is maintained.",
        "suggested_tag": "MAIN_EARTH_CONN_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_condition_in_busbar",
        "required": false,
        "param_type": "input",
        "display_name": "Heater condition in busbar",
        "suggested_tag": "BB_HEATR_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wiring_and_relays_conditions_in_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Wiring & Relays Conditions in cubical",
        "suggested_tag": "WRNG_RELAY_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_alignment_straight_runs_joint_packs_and_directional_change_pieces",
        "required": false,
        "param_type": "input",
        "display_name": "Check alignment, straight runs, joint packs and directional change pieces",
        "suggested_tag": "ALNGMT_RUN_JOINT_DIRECT_CHNAGE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_ais_busbar_hi",
    "analytic_type_display_name": "33kV AIS Busbar Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
        "name": "33kv_ais_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV AIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination HI",
        "suggested_tag": "CBL_COMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "busbar_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Busbar Component HI",
        "suggested_tag": "BB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_ais_hi",
    "analytic_type_display_name": "33kV AIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
        "name": "33kv_gis_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_hi",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 HI",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination HI",
        "suggested_tag": "CBL_COMP_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_gis_hi",
    "analytic_type_display_name": "33kV GIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "220kv_gis_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD HI",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_hi",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 HI",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_1_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination 1 HI",
        "suggested_tag": "CBL_COMP1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_2_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination 2 HI",
        "suggested_tag": "CBL_COMP2_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_3_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination 3 HI",
        "suggested_tag": "CBL_COMP3_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_hi",
    "analytic_type_display_name": "220kV GIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["HV_AIS_BAY"],
    "parameters": [{
        "name": "220kv_ais_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV AIS Circuit Breaker Health Index",
        "suggested_tag": "CB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Contact Time",
        "suggested_tag": "CNT_TIME_AT_C_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pole_discrepancy_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Pole Discrepancy(ms)",
        "suggested_tag": "POLE_DISCREP_AT_C_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "break_mismatch_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Break Mismatch (ms)",
        "suggested_tag": "CLOSE_BREAK_MISMATCH_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_bounce_duration_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Max Bounce Duration (ms)",
        "suggested_tag": "CLOSE_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_bounce_duration_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Total Bounce Duration(ms)",
        "suggested_tag": "CLOSE_TOTAL_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_bounces_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close No. of Bounces",
        "suggested_tag": "CLOSE_NO_OF_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Contact Time",
        "suggested_tag": "CNT_TIME_AT_O1_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pole_discrepancy_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Pole Discrepancy(ms)",
        "suggested_tag": "POLE_DISCREP_AT_O1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "break_mismatch_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Break Mismatch (ms)",
        "suggested_tag": "OPEN1_BREAK_MISMATCH_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_bounce_duration_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Max Bounce Duration (ms)",
        "suggested_tag": "OPEN1_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_bounce_duration_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Total Bounce Duration(ms)",
        "suggested_tag": "OPEN1_TOTAL_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_bounces_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 No. of Bounces",
        "suggested_tag": "OPEN1_NO_OF_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Contact Time",
        "suggested_tag": "CNT_TIME_AT_O2_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pole_discrepancy_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Pole Discrepancy(ms)",
        "suggested_tag": "POLE_DISCREP_AT_O2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "break_mismatch_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Break Mismatch (ms)",
        "suggested_tag": "OPEN2_BREAK_MISMATCH_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_bounce_duration_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Max Bounce Duration (ms)",
        "suggested_tag": "OPEN2_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_bounce_duration_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Total Bounce Duration(ms)",
        "suggested_tag": "OPEN2_TOTAL_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_bounces_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 No. of Bounces",
        "suggested_tag": "OPEN2_NO_OF_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_close1",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 1 Contact Time Close",
        "suggested_tag": "CNT_TIME_AT_CO1_CLOSE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 1 Contact Time Open",
        "suggested_tag": "CNT_TIME_AT_CO1_OPEN_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co_timing1",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 1 CO Timing",
        "suggested_tag": "CNT_TIME_AT_CO1_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_close2",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 2 Contact Time Close",
        "suggested_tag": "CNT_TIME_AT_CO2_CLOSE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 2 Contact Time Open",
        "suggested_tag": "CNT_TIME_AT_CO2_OPEN_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co_timing2",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 2 CO Timing",
        "suggested_tag": "CNT_TIME_AT_CO2_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_mechanism_travel",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Mechanical Travel(mm)",
        "suggested_tag": "MECH_TRAVEL_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Contact Travel(mm)",
        "suggested_tag": "CNT_TRAVEL_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_close_over_travel",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Close Over Travel(mm)",
        "suggested_tag": "CLOSE_OVER_TRAVEL_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_open_rebound",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Open Rebound Travel(mm)",
        "suggested_tag": "OPEN_REBOUND_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_resistance_measurement_of_contact",
        "required": false,
        "param_type": "input",
        "display_name": "Static resistance measurement of contact",
        "suggested_tag": "STATIC_CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "Max contact travel",
        "suggested_tag": "CNT_TRAVEL_DIST_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52a_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52A contact switching time",
        "suggested_tag": "CB_52A_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52b_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52B contact switching time",
        "suggested_tag": "CB_52B_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Total Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "CLOSE_COIL_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "OPEN1_COIL_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "OPEN2_COIL_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "MTR_WNDG_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "MES_RES_CONTCTR_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_OPEN_COIL1_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_OPEN_COIL2_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_CLOSE_COIL_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "CB_AUX_SUPPLY_VOLT_DC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL1_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL2_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "atm_humidity_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Atm. Humidity measurement",
        "suggested_tag": "ATM_HUMIDITY_MES",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_temp",
        "required": false,
        "param_type": "input",
        "display_name": "IR thermography measurement",
        "suggested_tag": "IR_THERM_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temp (Offline)",
        "suggested_tag": "AMB_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "compressor_tank_pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Compressor Tank Pressure",
        "suggested_tag": "COMPR_TANK_PRESS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "compressor_tank_leakage",
        "required": false,
        "param_type": "input",
        "display_name": "Compressor Tank Pressure",
        "suggested_tag": "COMPR_TANK_PRESS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "Pump motor steady state current",
        "suggested_tag": "PNEUMATIC_MTR_CURR_SS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "Pump motor inrush current",
        "suggested_tag": "PNEUMATIC_MTR_CURR_INRUSH_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relay_and_control_function",
        "required": false,
        "param_type": "input",
        "display_name": "Relay & control function, Indicators check",
        "suggested_tag": "CB_RELAY_AND_CNTRL_FUNC_INDICATOR_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_error_with_referance_gauge",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage error with reference gauge(pressure, density, moisture any)",
        "suggested_tag": "CB_PERC_ERROR_OF_GUAGE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "CB_MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "CB_MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "CB_MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "CB_MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance Measurement of CB Insulators",
        "suggested_tag": "CB_INS_RES_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wiring_and_relays_condition_in_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Wiring & Relays Conditions in cubical",
        "suggested_tag": "CB_WIRING_RELAY_CNTRL_CUBICAL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "control_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Control cubical (LCC Panel) conidition",
        "suggested_tag": "CB_LCC_PANEL_DUST_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hotspot_wiring_lcc",
        "required": false,
        "param_type": "input",
        "display_name": "Hot Spot in wiring in LCC condition",
        "suggested_tag": "CB_LCC_PANEL_HOTSPOT_IN_WIRE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_measured_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressure measured for each CB pole",
        "suggested_tag": "CB_SF6_PRESS_MES_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_gas_in_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 gas in each Pole of CB",
        "suggested_tag": "CB_SF6_PRESS_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_density_measured_in_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "Gas density Measured in each CB pole",
        "suggested_tag": "CB_SF6_DENS_MES_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_sf6_gas_leakage_per_year",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage SF 6 gas Leakage per year",
        "suggested_tag": "CB_SF6_LEAKAGE_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dew_point_measurement_of_sf6_gas",
        "required": false,
        "param_type": "input",
        "display_name": "Dew Point Measurement of SF6 Gas",
        "suggested_tag": "DEW_POINT_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_purity",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 Purity",
        "suggested_tag": "CB_SF6_PURITY_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity_content_in_sf6",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity content in SF6(ppmv) (with CB)",
        "suggested_tag": "REL_HUMIDITY_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_ais_cb_hi",
    "analytic_type_display_name": "220kV AIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_AIS_BAY"],
    "parameters": [{
        "name": "220kv_ais_isolator_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV AIS Isolator Health Index",
        "suggested_tag": "DIS1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_contact_res_measurement_of_arms",
        "required": false,
        "param_type": "input",
        "display_name": "Static contact resistance measurement of Arms",
        "suggested_tag": "DIS2_ARM_CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_contact_res_measurement_of_fingers",
        "required": false,
        "param_type": "input",
        "display_name": "Static contact resistance measurement of Fingers",
        "suggested_tag": "DIS2_FINGERS_CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contractor_res_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance measurement",
        "suggested_tag": "DIS2_CONTACTOR_RES_MAX_DEV_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_res_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "DIS2_MTR_WNDG_RES_MAX_DEV_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_insulation_res_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Insulation Resistance measurement",
        "suggested_tag": "DIS2_INS_RES_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_opening_time",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Opening time",
        "suggested_tag": "DIS2_MTR_OPT_TIME_OPEN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_closing_time",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Closing time",
        "suggested_tag": "DIS2_MTR_OPT_TIME_CLOSE_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "IR thermography measurement",
        "suggested_tag": "DIS2_IR_THERM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temp",
        "suggested_tag": "DIS2_AMB_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_ais_isolator_hi",
    "analytic_type_display_name": "220kV AIS Isolator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_AIS_BAY"],
    "parameters": [{
        "name": "220kv_ais_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV AIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "isolator_hi_1",
        "required": false,
        "param_type": "input",
        "display_name": "Disconnector/Isolator 1 HI",
        "suggested_tag": "DIS1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "isolator_hi_2",
        "required": false,
        "param_type": "input",
        "display_name": "Disconnector/Isolator 2 HI",
        "suggested_tag": "DIS2_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_ais_hi",
    "analytic_type_display_name": "220kV AIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["Busduct"],
    "parameters": [{
            "name": "busduct_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Busduct Health Index",
            "suggested_tag": "HEALTH_INDEX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "BD_PD_MAX_AMP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "BD_PD_MAX_AMP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "BD_TEMP_POINT_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "ambient_temp",
            "required": false,
            "param_type": "input",
            "display_name": "Ambient temperature online",
            "suggested_tag": "AMB_TEMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "BD_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Percent Incremental leakage Current Measurement",
            "suggested_tag": "CURR_LEAK_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "leakage_current_differences_between_phases",
            "required": false,
            "param_type": "input",
            "display_name": "Leakage current diffrences between phases",
            "suggested_tag": "CURR_LEAK_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "GRND_RES_ALL_ERTH_LOOP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busduct_connection_condition",
            "required": false,
            "param_type": "input",
            "display_name": "Busduct connection condition",
            "suggested_tag": "BD_CONN_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busduct_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Busduct supporting structure condition",
            "suggested_tag": "BD_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busduct_earthing_condition",
            "required": false,
            "param_type": "input",
            "display_name": "Busduct earthing condition",
            "suggested_tag": "BD_ERTH_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busbar_grading_length_surface_condition",
            "required": false,
            "param_type": "input",
            "display_name": "Busbar grading length surface condition",
            "suggested_tag": "BD_GRADING_LENGTH_SRFC_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermovisions_on_busbar_joints_and_earthing_loops",
            "required": false,
            "param_type": "input",
            "display_name": "Thermovisions on busbar, joints and earthing loops",
            "suggested_tag": "THERM_HOTSPOT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "33kv_busduct_hi",
    "analytic_type_display_name": "33kV Busduct Health Index"
},
{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "methane_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Methane (CH4) Offline",
        "suggested_tag": "MT_OIL_CH4_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethane_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ethane (C2H6) Offline",
        "suggested_tag": "MT_OIL_C2H6_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethylene_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ethylene (C2H4) Offline",
        "suggested_tag": "MT_OIL_C2H4_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "acetylene_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Acetylene (C2H2) Offline",
        "suggested_tag": "MT_OIL_C2H2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "methane_online",
        "required": false,
        "param_type": "input",
        "display_name": "Methane (CH4) Online",
        "suggested_tag": "MT_OIL_CH4",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethane_online",
        "required": false,
        "param_type": "input",
        "display_name": "Ethane (C2H6) Online",
        "suggested_tag": "MT_OIL_C2H6",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethylene_online",
        "required": false,
        "param_type": "input",
        "display_name": "Ethylene (C2H4) Online",
        "suggested_tag": "MT_OIL_C2H4",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "acetylene_online",
        "required": false,
        "param_type": "input",
        "display_name": "Acetylene (C2H2) Online",
        "suggested_tag": "MT_OIL_C2H2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_value_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil Value from Offline",
        "suggested_tag": "NEI_OIL_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_value_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil Value from Online",
        "suggested_tag": "NEI_OIL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_prev_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 1-Day RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_PREV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil RoC from Offline Values",
        "suggested_tag": "NEI_OIL_ROC_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_current_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil Current RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_duration_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil RoC Duration for Offline Values",
        "suggested_tag": "NEI_OIL_ROC_DURATION_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_1m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 1-Month RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_1M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_3m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 3-Months RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_3M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_6m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 6-Months RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_6M",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "nei_oil",
    "analytic_type_display_name": "NEI Oil"
},
{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "carbonmono_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Monoxide (CO) Offline",
        "suggested_tag": "MT_OIL_CO_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "carbondi_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Dioxide (CO2) Offline",
        "suggested_tag": "MT_OIL_CO2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "carbonmono_online",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Monoxide (CO) Online",
        "suggested_tag": "MT_OIL_CO",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "carbondi_online",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Dioxide (CO2) Online",
        "suggested_tag": "MT_OIL_CO2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_value_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper Value Offline",
        "suggested_tag": "NEI_PAPER_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_value_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper Value Online",
        "suggested_tag": "NEI_PAPER",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_prev_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 1-Day RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_PREV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper RoC from Offline Values",
        "suggested_tag": "NEI_PAPER_ROC_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_current_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper Current RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_duration_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper RoC Duration for Offline Values",
        "suggested_tag": "NEI_PAPER_ROC_DURATION_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_1m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 1-Month RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_1M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_3m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 3-Months RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_3M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_6m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 6-Months RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_6M",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "nei_paper",
    "analytic_type_display_name": "NEI Paper"
}
]' WHERE analytic_type_name='MasterAnalyticsUIJson';


;

UPDATE public.version SET version = 4 WHERE type = 'db_version';

--Customer id = 1
-- Lakshmi Priyanka Chamarthy
--generator_summary_json_update_script

UPDATE public.all_jsons SET json='{
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
	],
	"SummaryModel": "model1",
	"ShowAlarm": true,
	"LoadData": [
		{
			"tagName": "ACTIVE_POWER",
			"displayName": "Power",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "CURR_PH_B",
			"displayName": "Current",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "VOLT_PH_B",
			"displayName": "Voltage",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "FREQ",
			"displayName": "Frequency",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "POWER_FACTOR",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "THD",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		}
	],
	"Recommendation":[
		{
			 "componentName":"RecommendationWidget"
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
					"MainComponentName": "csa",
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
							"ShowThresholds":"true",
							"ShowTagType": true,
							"startAngle": 90,
							"endAngle": 450,
							"alarmIds": [],
							"tagNames": [],
							"heading": "",
							"unit": "",
							"isWidget": "false",
							"sideAlarm": "false",
							"min": "0",
							"max": "100",
							"displayName": "Power Factor",
							"componentName": "RealtimeGauge"
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
					"order": "4",
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
							"heading": "Generator Status",
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
					"MainHeading": "Partial Discharge",
					"ScreenName": "PD Analytics",
					"Configured": "true",
					"NoOfComponents": "4",
					"MainComponentName": "pdanalytics",
					"sideAlarm": "",
					"unit": "",
					"order": "3",
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
							"max": "60",
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
							"max": "190",
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
							"tagName": "CLNG_OUTLET_TEMP",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Cooling Outlet",
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
							"componentName": "RealtimePrecedenceGaugeWidget"
						}
					]
				},
				{
					"MainHeading": "Vibration",
					"ScreenName": "Vibration Analytics",
					"Configured": "true",
					"NoOfComponents": "3",
					"MainComponentName": "vibration/summary",
					"redirectLink": "/",
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
				},
				{
					"MainHeading": "Flux",
					"ScreenName": "Flux Monitoring",
					"Configured": "true",
					"NoOfComponents": "2",
					"MainComponentName": "flux",
					"sideAlarm": "",
					"unit": "",
					"order": "7",
					"ShowViewAll": "true",
					"redirectLink": "/vital",
					"model2Class": "dataListWrapper",
					"className": "fourCol-row cardWrap",
					"location": "right",
					"heading": " ",
					"subHeading": " ",
					"componentName": "Gauge",
					"components": [
						{
							"tagName": "POLE1_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 1 Max NFD",
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
							"tagName": "POLE2_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 2 Max NFD",
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
WHERE asset_id=0 and asset_type_name = 'generator' 
AND json_type = 0
;

UPDATE public.version SET version = 5 WHERE type = 'db_version';

--Customer id = 1
-- Santhosh
--Motor csa json changes

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
							"tagName": "",
							"tagNames": [
								"VOLT_BALANCE",
								"CURR_BALANCE"
							],
							"heading": "Unbalance",
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
							"className": "noCSACards item100full",
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

UPDATE public.version SET version = 6 WHERE type = 'db_version';

--Customer id = 1
-- Santhosh
--Generator csa section json

UPDATE public.all_jsons SET json='{
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
	],
	"SummaryModel": "model1",
	"ShowAlarm": true,
	"LoadData": [
		{
			"tagName": "ACTIVE_POWER",
			"displayName": "Power",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "CURR_PH_B",
			"displayName": "Current",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "VOLT_PH_B",
			"displayName": "Voltage",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "FREQ",
			"displayName": "Frequency",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "POWER_FACTOR",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "THD",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		}
	],
	"Recommendation":[
		{
			 "componentName":"RecommendationWidget"
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
					"MainHeading": "Generator Status",
					"ScreenName": "CSA Analytics",
					"Configured": "true",
					"NoOfComponents": "9",
					"MainComponentName": "csa",
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
							"ShowThresholds":"true",
							"ShowTagType": true,
							"startAngle": 90,
							"endAngle": 450,
							"alarmIds": [],
							"tagNames": [],
							"heading": "",
							"unit": "",
							"isWidget": "false",
							"sideAlarm": "false",
							"min": "0",
							"max": "100",
							"displayName": "Power Factor",
							"componentName": "RealtimeGauge"
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
					"MainHeading": "Current Signature Analytics",
					"ScreenName": "CSA Analytics",
					"Configured": "true",
					"NoOfComponents": "2",
					"MainComponentName": "csa",
					"redirectLink": "/vital",
					"sideAlarm": "false",
					"unit": "",
					"order": "4",
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
							"heading": "Generator Status",
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
							"className": "noCSACards item100full",
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
					"MainHeading": "Partial Discharge",
					"ScreenName": "PD Analytics",
					"Configured": "true",
					"NoOfComponents": "4",
					"MainComponentName": "pdanalytics",
					"sideAlarm": "",
					"unit": "",
					"order": "3",
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
							"max": "60",
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
							"max": "190",
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
							"tagName": "CLNG_OUTLET_TEMP",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Cooling Outlet",
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
							"componentName": "RealtimePrecedenceGaugeWidget"
						}
					]
				},
				{
					"MainHeading": "Vibration",
					"ScreenName": "Vibration Analytics",
					"Configured": "true",
					"NoOfComponents": "3",
					"MainComponentName": "vibration/summary",
					"redirectLink": "/",
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
				},
				{
					"MainHeading": "Flux",
					"ScreenName": "Flux Monitoring",
					"Configured": "true",
					"NoOfComponents": "2",
					"MainComponentName": "flux",
					"sideAlarm": "",
					"unit": "",
					"order": "7",
					"ShowViewAll": "true",
					"redirectLink": "/vital",
					"model2Class": "dataListWrapper",
					"className": "fourCol-row cardWrap",
					"location": "right",
					"heading": " ",
					"subHeading": " ",
					"componentName": "Gauge",
					"components": [
						{
							"tagName": "POLE1_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 1 Max NFD",
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
							"tagName": "POLE2_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 2 Max NFD",
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
WHERE asset_id=0 and asset_type_name = 'generator' 
AND json_type = 0
;

UPDATE public.version SET version = 7 WHERE type = 'db_version';

--Customer id = 1
-- Niveditha
--update the  input tag in master json of CSA health index for motor and generator.For motor and generator tag are same - EQUIP_STATUS

UPDATE public.analytics_json
	SET analytics_json='[{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "water_content",
        "required": false,
        "param_type": "input",
        "display_name": "Water Content",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relative_saturation",
        "required": false,
        "param_type": "output",
        "display_name": "Relative Saturation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_in_oil_condition",
        "required": false,
        "param_type": "output",
        "display_name": "Moisture in Oil Condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "mio",
    "analytic_type_display_name": "Moisture in Oil"
},
{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "relative_saturation",
        "required": false,
        "param_type": "input",
        "display_name": "Relative Saturation(%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wcp",
        "required": false,
        "param_type": "output",
        "display_name": "Moisture Estimation in Paper(%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_in_paper_condition",
        "required": false,
        "param_type": "output",
        "display_name": "Moisture in Paper Condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "mip",
    "analytic_type_display_name": "Moisture in Paper"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "water_content_in_paper_perc",
        "required": false,
        "param_type": "input",
        "display_name": "Moisture Estimation in Paper(%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bit",
        "required": false,
        "param_type": "output",
        "display_name": "Bubbling Inception Temperature(Celcius)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "bit",
    "analytic_type_display_name": "Bubbling Temperature"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Voltage",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_load_current",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Load Current (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trafo_MVA",
        "required": false,
        "param_type": "input",
        "display_name": "Transformer MVA Rating (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_hourly_LoadCycle",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Hourly Load Cycle",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_daily_LoadCycleCTL",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Daily Load Cycle Continuous",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_daily_LoadCycleSTL",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Daily Load Cycle Short Term",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_power_threshold",
        "required": false,
        "param_type": "setting",
        "display_name": "Load Power Threshold",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "calculation_duration",
        "required": false,
        "param_type": "setting",
        "display_name": "Calculation Duration in Minutes",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "overloadCapacity",
    "analytic_type_display_name": "Overload Capacity"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "hotspot_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Hotspot Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "comm_date",
        "required": false,
        "param_type": "input",
        "display_name": "Commissioning date from nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "per_unit_tx_insulation_life",
        "required": false,
        "param_type": "output",
        "display_name": "Per unit transformer insulation life",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eqAgingOfTrafoLife",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Aging of Transformer Life",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentLossOfLifePerDay",
        "required": false,
        "param_type": "output",
        "display_name": "Percent Loss of Life Per Day",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "agingFactor",
        "required": false,
        "param_type": "output",
        "display_name": "Aging Acceleration Factor",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cumulativeAgeHr",
        "required": false,
        "param_type": "output",
        "display_name": "Cummulative Age Hour",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentLossOfLifePerHour",
        "required": false,
        "param_type": "output",
        "display_name": "Percent Loss of Life Per Hour",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "eq_aging_of_trafo_life_for_every_365_days",
        "required": false,
        "param_type": "output",
        "display_name": "EQ Aging of Transformer life for every 365 days",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "consumption_of_percent_loss_of_life_for_every_365_days",
        "required": false,
        "param_type": "output",
        "display_name": "Consumption of Percent Loss of Life for every 365 days",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "trans_life",
    "analytic_type_display_name": "Transformer Life"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "load_current",
        "required": false,
        "param_type": "input",
        "display_name": "Load Current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "line_voltage_actual",
        "required": false,
        "param_type": "input",
        "display_name": "Line Voltage (Actual)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_fan_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Group Status (Oil)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_pump_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Group Status (Oil)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_fan_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Group Status (Winding)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_pump_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Group Status (Winding)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_load",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Load",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "weight_of_core_and_coil_assembly_kg",
        "required": false,
        "param_type": "input",
        "display_name": "Weight of core and coil assembly (KG)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "weight_of_tank_and_fittings_kg",
        "required": false,
        "param_type": "input",
        "display_name": "Weight of Tank and Fittings (kg)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "liters_of_oil",
        "required": false,
        "param_type": "input",
        "display_name": "Liters of Oil",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_loss",
        "required": false,
        "param_type": "input",
        "display_name": "Load Loss",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_load",
        "required": false,
        "param_type": "input",
        "display_name": "No Load",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_rise_over_amb_temp_at_rated_load",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Rise over Ambient Temp at Rated Load",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hottestspot_rise_over_ambient_temp_at_rated_load_on_the_tap_position",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Hottest Spot Rise over Ambient Temp at Rated Load on the Tap Position",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "calculation_duration",
        "required": false,
        "param_type": "setting",
        "display_name": "Calculation Duration in Minutes",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_rise_over_amb_temp",
        "required": false,
        "param_type": "output",
        "display_name": "Top Oil Rise over Ambient Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hottest_spot_rise_over_top_oil_temp",
        "required": false,
        "param_type": "output",
        "display_name": "Winding Hottest Spot Rise over Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hotspot_rise_over_top_oil",
        "required": false,
        "param_type": "output",
        "display_name": "Hotspot Rise over Top Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "winding_hotspot",
    "analytic_type_display_name": "Winding Hotspot & Oil Temperature"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "tan_delta_off",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_off",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "amb_temp_off",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_curr",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage Current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "amb_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_fat",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta (FAT)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_fat",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance (FAT)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "crack_on_porcelain",
        "required": false,
        "param_type": "input",
        "display_name": "Crack on Porcelain of Bushing (YES/NO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_leakage_on_bushing",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage on Bushing (YES/NO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "arcing_sound",
        "required": false,
        "param_type": "input",
        "display_name": "Arcing Sound on Bushing (NO/LOW/HIGH)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surface_dirt",
        "required": false,
        "param_type": "input",
        "display_name": "Condition of Surface Dirt on Bushing (NO/LOW/HIGH)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "looseness_of_test_tap",
        "required": false,
        "param_type": "input",
        "display_name": "Looseness of the Test Tap on Bushing (YES/NO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sealing",
        "required": false,
        "param_type": "input",
        "display_name": "Condition of Sealing on Bushing (TIGHT/LOOSE)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_level",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Level in the Bushing (OK/NotOK)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "conductor_connection",
        "required": false,
        "param_type": "input",
        "display_name": "Condition of Conductor connection with Bushing (TIGHT/LOOSE)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bushing_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "Bushing Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bushing_type",
        "required": false,
        "param_type": "setting",
        "display_name": "Bushing Type",
        "suggested_tag": "",
        "default_value": "OIP",
        "settings_value": [{
            "name": "OIP",
            "value": "1"
        }, {
            "name": "RIP",
            "value": "2"
        }, {
            "name": "RBP",
            "value": "3"
        }, {
            "name": "CI",
            "value": "4"
        }]
    }],
    "analytic_type": "bushing_hi",
    "analytic_type_display_name": "Bushing Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "tan_delta_off",
        "required": false,
        "param_type": "input",
        "display_name": "Tan Delta (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_winding_resistance_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_turn_ratio_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Turn Ratio Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_excitation_current_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Excitation Current Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_magnetic_balance_test_flux_summation_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Magnetic Balance Test Flux Summation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_magnetic_balance_test_cross_flux_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Magnetic Balance Test Cross Flux",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_max_three_sc_impedence_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Three SC Impedance Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_winding_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Measurement Winding Deviation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_winding_deviation_fat",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Measurement Winding Deviation FAT",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_pi_off",
        "required": false,
        "param_type": "input",
        "display_name": "PI Values (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_ir_winding_off",
        "required": false,
        "param_type": "input",
        "display_name": "IR Values of winding (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_ir_winding_cc_cl",
        "required": false,
        "param_type": "input",
        "display_name": "IR Values of CC-CL (Core Frame lamination) (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_by_dry_weight_in_paper_off",
        "required": false,
        "param_type": "input",
        "display_name": "Moisture in paper Measurement (DIRANA Test) (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_sfra_measurement_freq_range_off",
        "required": false,
        "param_type": "input",
        "display_name": "SFRA/FRA Measurement (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temperature",
        "required": false,
        "param_type": "input",
        "display_name": "Top Oil Temperature (Calculated)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "moisture_in_paper",
        "required": false,
        "param_type": "input",
        "display_name": "Online Moisture in paper (Calculated)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "water_saturation_of_oil",
        "required": false,
        "param_type": "input",
        "display_name": "Water Saturation Of Oil",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "measured_winding_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Temperature ",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bottom_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Bottom Oil Temperature",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hotspot",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Hotspot",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hi",
        "required": true,
        "param_type": "output",
        "display_name": "Winding Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "winding_hi",
    "analytic_type_display_name": "Winding Health Index"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "subsystem",
        "required": true,
        "param_type": "setting",
        "display_name": "Subsystem",
        "suggested_tag": "",
        "default_value": "Maintank",
        "settings_value": [{
            "name": "Maintank",
            "value": "1"
        }, {
            "name": "OLTC",
            "value": "2"
        }]
    }, {
        "name": "OIL_TYPE",
        "required": true,
        "param_type": "input",
        "display_name": "Oil Type",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "H2",
        "required": false,
        "param_type": "input",
        "display_name": "H2 (Hydrogen Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "H2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "H2 (Hydrogen Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CH4",
        "required": false,
        "param_type": "input",
        "display_name": "CH4 (Methane Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CH4_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "CH4 (Methane Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H6",
        "required": false,
        "param_type": "input",
        "display_name": "C2H6 (Ethane Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H6_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "C2H6 (Ethane Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H4",
        "required": false,
        "param_type": "input",
        "display_name": "C2H4 (Ethylene Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H4_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "C2H4 (Ethylene Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H2",
        "required": false,
        "param_type": "input",
        "display_name": "C2H2 (Acetylene Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "C2H2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "C2H2 (Acetylene Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO",
        "required": false,
        "param_type": "input",
        "display_name": "CO (Carbon Monoxide Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "CO (Carbon Monoxide Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO2",
        "required": false,
        "param_type": "input",
        "display_name": "CO2 (Cardon Dioxide Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "CO2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "CO2 (Cardon Dioxide Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "N2",
        "required": false,
        "param_type": "input",
        "display_name": "N2 (Nitrogen Online)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "N2_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "N2 (Nitrogen Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "Furan_OFF",
        "required": false,
        "param_type": "input",
        "display_name": "2FAL (Furan Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chending_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Chendong model Degree of Polymerization",
        "suggested_tag": "DP_BY_CHENDOG",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stebbins_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Stebbins model Degree of Polymerization",
        "suggested_tag": "DP_BY_STEBBINS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dePablo_dp",
        "required": false,
        "param_type": "output",
        "display_name": "De Pablo model Degree of Polymerization",
        "suggested_tag": "DP_BY_DE PABLO",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pahalavanpour_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Pahalavanpour model Degree of Polymerization",
        "suggested_tag": "DP_BY_PAHALAVANPOUR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "paulVaurchex_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Paul Vaurchex model Degree of Polymerization",
        "suggested_tag": "DP_BY_PAUL VAURCHEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "burton_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Burton model Degree of Polymerization",
        "suggested_tag": "DP_BY_BURTON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dong_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Dong model Degree of Polymerization",
        "suggested_tag": "DP_BY_DONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "liYSong_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Li Y Song model Degree of Polymerization",
        "suggested_tag": "DP_BY_LI_ET_Y_SONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chaohui_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Chaohui model Degree of Polymerization",
        "suggested_tag": "DP_BY_CHAOHUI_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "myser1_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Myser1 model Degree of Polymerization",
        "suggested_tag": "DP_BY_MYSER_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "avg_dp",
        "required": false,
        "param_type": "output",
        "display_name": "Average Degree of Polymerization",
        "suggested_tag": "DP_AVG",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chending_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Chendong model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_CHENDOG",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stebbins_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Stebbins model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_STEBBINS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dePablo_lu",
        "required": false,
        "param_type": "output",
        "display_name": "De Pablo model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_DE_PABLO",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pahalavanpour_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Pahalavanpour model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_PAHALAVANPOUR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "paulVaurchex_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Paul Vaurchex model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_PAUL_VAURCHEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "burton_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Burton model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_BURTON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dong_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Dong model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_DONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "liYSong_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Li Y Song model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_LI_ET_Y_SONG_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "chaohui_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Chaohui model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_CHAOHUI_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "myser1_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Myser1 model life used",
        "suggested_tag": "LIFE_CONSUMED_BY_MYSER_ET_AL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "avg_lu",
        "required": false,
        "param_type": "output",
        "display_name": "Average Life consumed by Trafo paper",
        "suggested_tag": "LIFE_CONSUMED_AVG",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "dga",
    "analytic_type_display_name": "Dissolved Gas Analysis"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "steady_state_current",
        "required": false,
        "param_type": "input",
        "display_name": "Steady State current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "in_rush_current",
        "required": false,
        "param_type": "input",
        "display_name": "In Rush current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_torque_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor torque measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Static Winding Resistance Measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_power_consumption",
        "required": false,
        "param_type": "input",
        "display_name": "Motor power consumption",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_tap_change_position",
        "required": false,
        "param_type": "input",
        "display_name": "No of tap change position",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "time_duration_of_tap_changing",
        "required": false,
        "param_type": "input",
        "display_name": "Time duration of tap changing",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "top_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Top oil temp",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bottom_oil_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Bottom oil temp",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_for_leaks_oil_or_water",
        "required": false,
        "param_type": "input",
        "display_name": "Check for leaks of oil or water",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operate_tap_changer_both_directions",
        "required": false,
        "param_type": "input",
        "display_name": "Operate tap changer in both directions",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "unusual_sounds",
        "required": false,
        "param_type": "input",
        "display_name": "Unusual sounds",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_counter_working",
        "required": false,
        "param_type": "input",
        "display_name": "Operation counter working",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "raise_or_lower_indicator_flag_returns_to_center_when_op_in_both_directions",
        "required": false,
        "param_type": "input",
        "display_name": "Raise or lower indicator flag returns to center when operated in both directions",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_for_drive_belt_tension_adjust",
        "required": false,
        "param_type": "input",
        "display_name": "Check for drive belt tension adjust",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_switch_on_and_heater_working",
        "required": false,
        "param_type": "input",
        "display_name": "Heater switch on and heater working",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "general_visual_inspection",
        "required": false,
        "param_type": "input",
        "display_name": "General visual inspection",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "remote_or_manual_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Remote or manual operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "checking_wiring_and_control",
        "required": false,
        "param_type": "input",
        "display_name": "Check wiring and control",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_limit_switch_position",
        "required": false,
        "param_type": "input",
        "display_name": "Check limit switch operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_mechanical_stop_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Check mechanical stop operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "greasing_in_all_bevel_gear_of_shaft_of_oltc",
        "required": false,
        "param_type": "input",
        "display_name": "Greasing in all bevel gear of shaft of oltc",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "perform_visual_checks",
        "required": false,
        "param_type": "input",
        "display_name": "Perform visual checks",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "test_sequence_of_step_to_step_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Test sequence of step to step operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_anti_condensation_heater_and_cubicle_door_seals",
        "required": false,
        "param_type": "input",
        "display_name": "Check anti condensation heater and cubicle door seals",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_remote_control_position_indicator",
        "required": false,
        "param_type": "input",
        "display_name": "Check remote control position indicator",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "perform_additional_checks_according_to_manufacturers_manual",
        "required": false,
        "param_type": "input",
        "display_name": "Perform additional checks according to manufacturers manual",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_end_position_blockings",
        "required": false,
        "param_type": "input",
        "display_name": "Check end position blockings",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_breather_for_oltc_expansion_tank_at_regular_intervals",
        "required": false,
        "param_type": "input",
        "display_name": "Check breather for oltc expansion tank at regular intervals",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_at_regular_intervals_the_function_of_protective_devices",
        "required": false,
        "param_type": "input",
        "display_name": "Check at regular intervals the function of protective devices",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pull_oil_samples_for_lab_tests",
        "required": false,
        "param_type": "input",
        "display_name": "Pull oil samples for lab tests",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "verify_proper_oil_level",
        "required": false,
        "param_type": "input",
        "display_name": "Verify proper oil level",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "new_oil_added",
        "required": false,
        "param_type": "input",
        "display_name": "New oil added",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_cup_at_bottom",
        "required": false,
        "param_type": "input",
        "display_name": "Oil cup at bottom",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "silica_gel_color",
        "required": false,
        "param_type": "input",
        "display_name": "Silica gel color",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_in_oil_cup",
        "required": false,
        "param_type": "input",
        "display_name": "Oil in oil cup",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_for_leaks_in_ltc",
        "required": false,
        "param_type": "input",
        "display_name": "Check for leaks in ltc",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oltc_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "OLTC HI output",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "oltc_hi",
    "analytic_type_display_name": "OLTC Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "maintank",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in Maintank",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "radiator",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in Radiator",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "valves",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in Valves",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cc_cl",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in CC-CL",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ct_turret",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Leakage Points in CT Turret",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_temp_thermometer",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Oil Temp. Thermometer",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wind_temp_thermomter_hv",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Winding Temp. Thermometer for HV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wind_temp_thermomter_lv",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Winding Temp. Thermometer for LV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_level_indicator",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Oil Level Indicator",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "buccholz_relay",
        "required": false,
        "param_type": "input",
        "display_name": "Gauges (Checking & Calibration) of Buccholz Relay",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pres_relief_valve",
        "required": false,
        "param_type": "input",
        "display_name": "Pressure relief Valve (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sudden_pres_relay",
        "required": false,
        "param_type": "input",
        "display_name": "Sudden Pressure Relay (Protection Device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pres_cntrl_sys",
        "required": false,
        "param_type": "input",
        "display_name": "Gas Pressure Control System (Protection Device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bladder_fail_relay_for_conservator_tank",
        "required": false,
        "param_type": "input",
        "display_name": "Bladder Failure relay for Conservator tank (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "osr_tripping_checked",
        "required": false,
        "param_type": "input",
        "display_name": "OSR Tripping Checked (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "mog_alarm_of_maintank_conservator",
        "required": false,
        "param_type": "input",
        "display_name": "MOG Alarm of Maintank Conservator (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "mog_alarm_of_oltc_conservator",
        "required": false,
        "param_type": "input",
        "display_name": "MOG Alarm of OLTC  Conservator (Protection device)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "improper_grounding_of_trafo",
        "required": false,
        "param_type": "input",
        "display_name": "Number of Improper Grounding of Trafo",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gasket_damage",
        "required": false,
        "param_type": "input",
        "display_name": "Number of Gasket damaged",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_level",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Level",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Pressure",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "maintank_trafo_aux_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "Maintank and Trafo Aux HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "maintank_trafo_aux_hi",
    "analytic_type_display_name": "Maintank and Trafo Aux HI"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "fan_status",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_pump_status",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Pump Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flow_indicator_status",
        "required": false,
        "param_type": "input",
        "display_name": "Flow Indicator Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_status_ac_supply_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Status AC Supply Voltage",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "auto_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Auto Operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manual_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Manual Operation",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "water_cooled",
        "required": false,
        "param_type": "input",
        "display_name": "Water Cooled",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_water_cooled",
        "required": false,
        "param_type": "input",
        "display_name": "Oil Water Cooled",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "forced_air_forced_oil_cooler",
        "required": false,
        "param_type": "input",
        "display_name": "Forced Air Forced Oil Cooler",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "damage_of_pump_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "Damage Of Pump Bearing",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotation_of_pump",
        "required": false,
        "param_type": "input",
        "display_name": "Rotation Of Pump",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_condition_for_pump",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Condition For Pump",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fan_motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Motor Current Steady State",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fan_motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "Fan Motor Current Inrush",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "normal_current",
        "required": false,
        "param_type": "input",
        "display_name": "Normal Current",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Motor Current Steady State",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "Pump Motor Current Inrush",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "difference_of_cooling_system",
        "required": false,
        "param_type": "input",
        "display_name": "Difference Of Cooling System",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_system_flow_monitoring_flow_rate",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling System Flow Monitoring Flow Rate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_system_flow_monitoring_pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling System Flow Monitoring Pressure",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flow_rated_value",
        "required": false,
        "param_type": "input",
        "display_name": "Flow Rated Value",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pressure_rated_value",
        "required": false,
        "param_type": "input",
        "display_name": "Pressure Rated Value",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "number_of_run_hours_for_fan_or_cooling",
        "required": false,
        "param_type": "input",
        "display_name": "Number Of Run Hours For Fan Or Cooling",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_number_of_running_hours_for_each",
        "required": false,
        "param_type": "input",
        "display_name": "Total Number Of Running Hours For Each",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_number_of_starts_for_each",
        "required": false,
        "param_type": "input",
        "display_name": "Total Number Of Starts For Each",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_run_hours_for_fan_or_cooling_nameplate",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Run Hours For Fan Or Cooling Nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_run_hours_for_each_nameplate",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Run Hours For Each Nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_starts_for_each_nameplate",
        "required": false,
        "param_type": "input",
        "display_name": "Rated Starts For Each Nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_system_hi",
        "required": true,
        "param_type": "output",
        "display_name": "Cooling System HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_type",
        "required": false,
        "param_type": "setting",
        "display_name": "Cooling Type",
        "suggested_tag": "",
        "default_value": "ONAN",
        "settings_value": [{
            "name": "ONAN",
            "value": "0"
        }, {
            "name": "ONAF",
            "value": "1"
        }, {
            "name": "OFAF",
            "value": "2"
        }]
    }],
    "analytic_type": "cooling_system_hi",
    "analytic_type_display_name": "Cooling System HI"
}, {
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "acidity",
        "required": false,
        "param_type": "input",
        "display_name": "Acidity (Offline)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bdvkv",
        "required": false,
        "param_type": "input",
        "display_name": "BDV (in kV)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "c2h2ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Acetylene (C2H2)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "c2h4ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Ethylene (C2H4)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "c2h6ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Ethane (C2H6)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ch4ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Methane (CH4)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co2ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Dioxide (CO2)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coppm",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Monoxide (CO)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "h2ppm",
        "required": false,
        "param_type": "input",
        "display_name": "Hydrogen (H2)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ddf",
        "required": false,
        "param_type": "input",
        "display_name": "DDF",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fds_pdc",
        "required": false,
        "param_type": "input",
        "display_name": "FDS/PDC",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fluid_type",
        "required": false,
        "param_type": "input",
        "display_name": "Fluid Type (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "furfural_2_fal",
        "required": false,
        "param_type": "input",
        "display_name": "Furfural-2-FAL",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_inductance",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage Inductance",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "primary_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "primary Voltage (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sfra",
        "required": false,
        "param_type": "input",
        "display_name": "SFRA(Inspection Record)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "transformer_type",
        "required": false,
        "param_type": "input",
        "display_name": "Transformer Type (Nameplate)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "water_content",
        "required": false,
        "param_type": "input",
        "display_name": "Water Content (H2O)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coverage",
        "required": true,
        "param_type": "output",
        "display_name": "Coverage Rate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_d",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Dielectric",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_d_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Dielectric Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_d_warning_generated",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Dielectric Warning",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_m",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Mechnical",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_m_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Mechnical Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_o",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Oil",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_o_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Oil Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_t",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Thermal",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_t_action",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Thermal Action",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_status",
        "required": true,
        "param_type": "output",
        "display_name": "DGA HI Status",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "dga_hi",
    "analytic_type_display_name": "Transformer DGA Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "aging_accelaration_factor",
        "required": true,
        "param_type": "input",
        "display_name": "Aging Acceleration Factor",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "feqa",
        "required": true,
        "param_type": "input",
        "display_name": "Equivalent Aging of trafo life (FEQA) in one days or say 24 hours at Ref. 110 cel.",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "per_loss_of_tx_life_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "% Loss of TR life per day (24 hours)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "consumption_of_per_loss_of_life_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "Consumption of % Loss of Life per day (%)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "per_hour_eq_load_cycle",
        "required": true,
        "param_type": "input",
        "display_name": "Per hour equivalent load cycles",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hi_aging",
        "required": true,
        "param_type": "output",
        "display_name": "Aging HI",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "aging_hi",
    "analytic_type_display_name": "Transformer Aging Health Index"
}, {
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["transformer"],
    "parameters": [{
        "name": "transforme_hi",
        "required": true,
        "param_type": "output",
        "display_name": "Transformer Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dga_hi",
        "required": false,
        "param_type": "input",
        "display_name": "DGA Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_analytics_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD Analytics Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bushing_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Bushing Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "aging_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Aging Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oltc_hi",
        "required": false,
        "param_type": "input",
        "display_name": "OLTC Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "maintank_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Maintank Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "transformer_hi",
    "analytic_type_display_name": "Transformer Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_hi_output",
        "required": false,
        "param_type": "output",
        "display_name": "Cable Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_insulation_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Insulation Health Index",
        "suggested_tag": "INS_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_1_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 1 Health Index",
        "suggested_tag": "JNT1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_2_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 2 Health Index",
        "suggested_tag": "JNT2_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_3_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 3 Health Index",
        "suggested_tag": "JNT3_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_4_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 4 Health Index",
        "suggested_tag": "JNT4_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_5_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 5 Health Index",
        "suggested_tag": "JNT5_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_6_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 6 Health Index",
        "suggested_tag": "JNT6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_7_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 7 Health Index",
        "suggested_tag": "JNT7_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_8_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 8 Health Index",
        "suggested_tag": "JNT8_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_9_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 9 Health Index",
        "suggested_tag": "JNT9_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_10_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 10 Health Index",
        "suggested_tag": "JNT10_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_11_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 11 Health Index",
        "suggested_tag": "JNT11_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_12_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 12 Health Index",
        "suggested_tag": "JNT12_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_13_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 13 Health Index",
        "suggested_tag": "JNT13_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_14_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 14 Health Index",
        "suggested_tag": "JNT14_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_15_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 15 Health Index",
        "suggested_tag": "JNT15_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_16_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 16 Health Index",
        "suggested_tag": "JNT16_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_17_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 17 Health Index",
        "suggested_tag": "JNT17_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_18_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 18 Health Index",
        "suggested_tag": "JNT18_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_19_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 19 Health Index",
        "suggested_tag": "JNT19_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_joint_20_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Joint 20 Health Index",
        "suggested_tag": "JNT20_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_termination_1_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Source Termination Health Index",
        "suggested_tag": "TER1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_termination_2_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Destination Termination Health Index",
        "suggested_tag": "TER2_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_hi",
    "analytic_type_display_name": "Cable Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["transformer"],
    "parameters": [{
        "name": "pd_analytics_hi",
        "required": true,
        "param_type": "output",
        "display_name": "PD Analytics Health Index",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "abs_pd_in_mv",
        "required": true,
        "param_type": "input",
        "display_name": "PD magnitude in mV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_in_pd_mag_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "PD magnitude in mV",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "repition_rate_of_pd",
        "required": true,
        "param_type": "input",
        "display_name": "Reptation Rate of PD (pps)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_in_repition_rate_of_pd_per_day",
        "required": true,
        "param_type": "input",
        "display_name": "Reptation Rate of PD (pps)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_amp",
        "required": true,
        "param_type": "setting",
        "display_name": "PD Amplitude Max Range",
        "suggested_tag": "",
        "default_value": "2000",
        "settings_value": null
    }],
    "analytic_type": "pd_hi",
    "analytic_type_display_name": "PD Analytics Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_termination_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Cable Termination Health Index",
        "suggested_tag": "TER1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage(kV)",
        "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_rated_voltage",
        "required": true,
        "param_type": "input",
        "display_name": "Voltage(U0) from nameplate",
        "suggested_tag": "RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "TER_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline ROC",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "TER_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature offline",
        "suggested_tag": "TER1_TEMP_MAX_DIFF_AMB_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature online",
        "suggested_tag": "TER1_TEMP_MAX_DIFF_AMB",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature offline",
        "suggested_tag": "TER1_TEMP_DEVP_OFF_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature online",
        "suggested_tag": "TER1_TEMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percent_incremental_sheath_current_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Sheath Current(mA)",
        "suggested_tag": "TER1_SHEATH_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_current_measurement_deviation_percent",
        "required": false,
        "param_type": "input",
        "display_name": "Max deviation load current(%)",
        "suggested_tag": "LOAD_CURR_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "grounding_resistance_near_termination_end",
        "required": false,
        "param_type": "input",
        "display_name": "Grounding resistance near termination end offline(ohm)",
        "suggested_tag": "TER1_GRND_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_jacket",
        "required": false,
        "param_type": "input",
        "display_name": "Cable jacket condition",
        "suggested_tag": "TER1_CBL_JACKET_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Cable supporting structure condition",
        "suggested_tag": "TER1_CBL_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_shield_grounding",
        "required": false,
        "param_type": "input",
        "display_name": "Cable shield grounding condition",
        "suggested_tag": "TER1_SHIELD_GRND_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surface_contamination_on_termination",
        "required": false,
        "param_type": "input",
        "display_name": "Surface contamination on termination condition",
        "suggested_tag": "TER1_SRFC_CONTM_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "svl_condition",
        "required": false,
        "param_type": "input",
        "display_name": "SVL condition",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rusting",
        "required": false,
        "param_type": "input",
        "display_name": "Rusting condition",
        "suggested_tag": "TER1_RUSTING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_density",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree density",
        "suggested_tag": "TER1_WTR_ELECT_TREE_DENS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_length",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree length",
        "suggested_tag": "TER1_WTR_ELECT_TREE_LNGTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_termination_hi",
    "analytic_type_display_name": "Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
            "name": "cable_termination_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Cable Termination Health Index",
            "suggested_tag": "CBL_COMP_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_inception_voltage",
            "required": false,
            "param_type": "input",
            "display_name": "PD Inception voltage(kV)",
            "suggested_tag": "PD_INCEPT_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_rated_voltage",
            "required": true,
            "param_type": "input",
            "display_name": "Voltage(U0) from nameplate",
            "suggested_tag": "RATED_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature offline",
            "suggested_tag": "TER_TEMP_MAX_DIFF_AMB_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "CBL_TER_TEMP_MAX_DIFF_AMB",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature offline",
            "suggested_tag": "TER_TEMP_DEVP_OFF_MAX_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "TER_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "TER_HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Sheath Current(mA)",
            "suggested_tag": "TER_SHEATH_CURR",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "load_current_measurement_deviation_percent",
            "required": false,
            "param_type": "input",
            "display_name": "Max deviation load current(%)",
            "suggested_tag": "LOAD_CURR_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "TER_GRND_RES_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_jacket",
            "required": false,
            "param_type": "input",
            "display_name": "Cable jacket condition",
            "suggested_tag": "TER_CBL_JACKET_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Cable supporting structure condition",
            "suggested_tag": "TER_CBL_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_shield_grounding",
            "required": false,
            "param_type": "input",
            "display_name": "Cable shield grounding condition",
            "suggested_tag": "TER_SHIELD_GRND_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "surface_contamination_on_termination",
            "required": false,
            "param_type": "input",
            "display_name": "Surface contamination on termination condition",
            "suggested_tag": "TER_SRFC_CONTM_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "33kv_ais_cable_termination_hi",
    "analytic_type_display_name": "33kV AIS Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
            "name": "cable_termination_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Cable Termination Health Index",
            "suggested_tag": "CBL_COMP_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_inception_voltage",
            "required": false,
            "param_type": "input",
            "display_name": "PD Inception voltage(kV)",
            "suggested_tag": "PD_INCEPT_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_rated_voltage",
            "required": true,
            "param_type": "input",
            "display_name": "Voltage(U0) from nameplate",
            "suggested_tag": "RATED_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature offline",
            "suggested_tag": "TER_TEMP_MAX_DIFF_AMB_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "CBL_TER_TEMP_MAX_DIFF_AMB",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature offline",
            "suggested_tag": "TER_TEMP_DEVP_OFF_MAX_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "TER_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "TER_HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Sheath Current(mA)",
            "suggested_tag": "TER_SHEATH_CURR",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "load_current_measurement_deviation_percent",
            "required": false,
            "param_type": "input",
            "display_name": "Max deviation load current(%)",
            "suggested_tag": "LOAD_CURR_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "TER_GRND_RES_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_jacket",
            "required": false,
            "param_type": "input",
            "display_name": "Cable jacket condition",
            "suggested_tag": "TER_CBL_JACKET_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Cable supporting structure condition",
            "suggested_tag": "TER_CBL_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_shield_grounding",
            "required": false,
            "param_type": "input",
            "display_name": "Cable shield grounding condition",
            "suggested_tag": "TER_SHIELD_GRND_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "surface_contamination_on_termination",
            "required": false,
            "param_type": "input",
            "display_name": "Surface contamination on termination condition",
            "suggested_tag": "TER_SRFC_CONTM_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "33kv_gis_cable_termination_hi",
    "analytic_type_display_name": "33kV GIS Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
            "name": "cable_termination_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Cable Termination Health Index",
            "suggested_tag": "CBL_COMP_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_inception_voltage",
            "required": false,
            "param_type": "input",
            "display_name": "PD Inception voltage(kV)",
            "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_rated_voltage",
            "required": true,
            "param_type": "input",
            "display_name": "Voltage(U0) from nameplate",
            "suggested_tag": "RATED_VOLT",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude offline ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature offline",
            "suggested_tag": "TER_TEMP_MAX_DIFF_AMB_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "CBL_TER_TEMP_MAX_DIFF_AMB",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature offline",
            "suggested_tag": "TER_TEMP_DEVP_OFF_MAX_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "TER_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "TER_HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Sheath Current(mA)",
            "suggested_tag": "TER_SHEATH_CURR",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "load_current_measurement_deviation_percent",
            "required": false,
            "param_type": "input",
            "display_name": "Max deviation load current(%)",
            "suggested_tag": "LOAD_CURR_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "TER_GRND_RES_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_jacket",
            "required": false,
            "param_type": "input",
            "display_name": "Cable jacket condition",
            "suggested_tag": "TER_CBL_JACKET_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Cable supporting structure condition",
            "suggested_tag": "TER_CBL_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "cable_shield_grounding",
            "required": false,
            "param_type": "input",
            "display_name": "Cable shield grounding condition",
            "suggested_tag": "TER_SHIELD_GRND_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "surface_contamination_on_termination",
            "required": false,
            "param_type": "input",
            "display_name": "Surface contamination on termination condition",
            "suggested_tag": "TER_SRFC_CONTM_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "220kv_gis_cable_termination_hi",
    "analytic_type_display_name": "220kV GIS Cable Termination Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_joint_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Cable Joint Health Index",
        "suggested_tag": "JNT1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage(kV)",
        "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_rated_voltage",
        "required": true,
        "param_type": "input",
        "display_name": "Voltage(U0) from nameplate",
        "suggested_tag": "KV_RATING_U0",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "JNT1_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline ROC",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "JNT1_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature offline",
        "suggested_tag": "JNT1_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient temperature offline",
        "suggested_tag": "JNT1_AMB_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature online",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature offline",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_phase_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference phase to phase temperature online",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percent_incremental_sheath_current_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Sheath Current(mA)",
        "suggested_tag": "JNT1_SHEATH_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "grounding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Grounding resistance offline(ohm)",
        "suggested_tag": "JNT1_GRND_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_jacket",
        "required": false,
        "param_type": "input",
        "display_name": "Cable jacket condition",
        "suggested_tag": "JNT1_CBL_JACKET_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Cable supporting structure condition",
        "suggested_tag": "JNT1_CBL_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_shield_grounding",
        "required": false,
        "param_type": "input",
        "display_name": "Cable shield grounding condition",
        "suggested_tag": "JNT1_SHIELD_GRND_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_grounding_connection",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole grounding condition",
        "suggested_tag": "JNT1_MANHOLE_GRND_CONNECT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_water_ingression",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole water ingression condition",
        "suggested_tag": "JNT1_MANHOLE_WRT_INGRS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_ventilation",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole ventilation condition",
        "suggested_tag": "JNT1_MANHOLE_VENTI_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "joint_earthing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Joint earthing condition",
        "suggested_tag": "JNT1_ERTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_from_oil_filled_joint",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage from oil filled joint condition",
        "suggested_tag": "JNT1_LEAK_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "svl_condition",
        "required": false,
        "param_type": "input",
        "display_name": "SVL condition",
        "suggested_tag": "JNT1_SVL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rusting",
        "required": false,
        "param_type": "input",
        "display_name": "Rusting condition",
        "suggested_tag": "JNT1_RUSTING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_density",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree density",
        "suggested_tag": "JNT1_WTR_ELECT_TREE_DENS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_length",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree length",
        "suggested_tag": "JNT1_WTR_ELECT_TREE_LNGTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_joint_hi",
    "analytic_type_display_name": "Cable Joint Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["cable"],
    "parameters": [{
        "name": "cable_insulation_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Cable Insulation Health Index",
        "suggested_tag": "INS_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage(kV)",
        "suggested_tag": "PD_INCEPTION_VOLT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_rated_voltage",
        "required": true,
        "param_type": "input",
        "display_name": "Rated voltage(U0) from nameplate",
        "suggested_tag": "KV_RATING_U0",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "INS_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude offline ROC",
        "suggested_tag": "MAX_OF_MAX_PD_AMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "INS_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature offline",
        "suggested_tag": "CBL_TEMP_DIFF_AMB_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp_online",
        "required": false,
        "param_type": "input",
        "display_name": "Max temperature difference wrt ambient temperature online",
        "suggested_tag": "CBL_TEMP_MAX_DIFF_AMB",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_current_measurement_deviation_percent",
        "required": false,
        "param_type": "input",
        "display_name": "Max deviation load current(%)",
        "suggested_tag": "LOAD_CURR_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_jacket",
        "required": false,
        "param_type": "input",
        "display_name": "Cable jacket condition",
        "suggested_tag": "INS_CBL_JACKET_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Cable supporting structure condition",
        "suggested_tag": "INS_CBL_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_cable_cellar_grounding_connection",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole/Cable cellar grounding connection condition",
        "suggested_tag": "INS_MANHOLE_GRND_CONNECT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_cable_cellar_water_ingression",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole/Cable cellar water ingression condition",
        "suggested_tag": "INS_MANHOLE_WRT_INGRS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "manhole_cable_cellar_ventilation",
        "required": false,
        "param_type": "input",
        "display_name": "Manhole/Cable cellar ventilation condition",
        "suggested_tag": "INS_MANHOLE_VENTI_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_density",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree density",
        "suggested_tag": "INS_WTR_ELECT_TREE_DENS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "electrical_tree_length",
        "required": false,
        "param_type": "input",
        "display_name": "Water/electrical tree length",
        "suggested_tag": "INS_WTR_ELECT_TREE_LNGTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation resistance measurement",
        "suggested_tag": "CBL_INS_RES_AT_1MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "kV Rating from nameplate",
        "suggested_tag": "RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_measurement_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance measurement deviation",
        "suggested_tag": "CBL_LOAD_CAP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_at_U0",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta at U0",
        "suggested_tag": "CBL_MEAN_TAND_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_tip_up",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta tip up",
        "suggested_tag": "CBL_MEAN_TAND_TIPUP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_stability_at_U0",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta stability at U0",
        "suggested_tag": "CBL_STD_DEV_TAND_AT_U0_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ac_withstand_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "AC withstand measurement",
        "suggested_tag": "AC_WTHSTAND_MEAS_MAX_TEST_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "time_domain_reflectometry",
        "required": false,
        "param_type": "input",
        "display_name": "Time domain reflectometry",
        "suggested_tag": "TDR_LIRA_WORST_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "polarization_depolarization_current",
        "required": false,
        "param_type": "input",
        "display_name": "Polarization/Depolarization current",
        "suggested_tag": "PC_DC_IRC_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "comm_date",
        "required": false,
        "param_type": "input",
        "display_name": "Commissioning date",
        "suggested_tag": "COMM_DATE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "load_current",
        "required": false,
        "param_type": "input",
        "display_name": "Load current",
        "suggested_tag": "PH_B_LOAD_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_current",
        "required": false,
        "param_type": "input",
        "display_name": "Rated load current from nameplate",
        "suggested_tag": "RATED_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "failure_total",
        "required": false,
        "param_type": "input",
        "display_name": "Total times of failure",
        "suggested_tag": "NO_OF_FAILURE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "repairation_total",
        "required": false,
        "param_type": "input",
        "display_name": "Total times of repairation",
        "suggested_tag": "NO_OF_REPAIRATION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "network_reliability",
        "required": false,
        "param_type": "input",
        "display_name": "Network reliability",
        "suggested_tag": "NETWORK_REL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "length",
        "required": false,
        "param_type": "input",
        "display_name": "Cable length",
        "suggested_tag": "CBL_LENGTH",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operational_environment",
        "required": false,
        "param_type": "input",
        "display_name": "Operational Environment",
        "suggested_tag": "OPT_ENVIRONMNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_pd_faults_identified",
        "required": false,
        "param_type": "input",
        "display_name": "Cable PD fault identified",
        "suggested_tag": "MAX_PD_DETCTD_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "cable_insulation_hi",
    "analytic_type_display_name": "Cable Insulation Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_stator_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Stator Health Index",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "STR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "polarization_index",
        "required": false,
        "param_type": "input",
        "display_name": "Polarization Index",
        "suggested_tag": "STR_PI_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "di_electric_discharge",
        "required": false,
        "param_type": "input",
        "display_name": "Di-electric discharge",
        "suggested_tag": "STR_DIEL_DIS_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tand_test",
        "required": false,
        "param_type": "input",
        "display_name": "TanD test",
        "suggested_tag": "MTR_TAND_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cap_test",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Test",
        "suggested_tag": "MTR_CAP_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_tip_up",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta tip up",
        "suggested_tag": "TAN_DELTA_TIP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "elcid",
        "required": false,
        "param_type": "input",
        "display_name": "ELCID (mA)",
        "suggested_tag": "ELCID_CL_FL_OF_CC_FOR_EACH_SLOT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "STR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_inductance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Inductance",
        "suggested_tag": "STR_WNDG_IND_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_impedance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Impedance",
        "suggested_tag": "STR_WNDG_IMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "phase_angle",
        "required": false,
        "param_type": "input",
        "display_name": "Phase angle",
        "suggested_tag": "STR_ANGL_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_frequency_response",
        "required": false,
        "param_type": "input",
        "display_name": "Current frequency response",
        "suggested_tag": "STR_CFR_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "capacitance_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance Ratio",
        "suggested_tag": "CAP_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "reabsorption_current_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Reabsorption current ratio",
        "suggested_tag": "REABS_CURR_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "absorption_index",
        "required": false,
        "param_type": "input",
        "display_name": "Absorption Index",
        "suggested_tag": "ABS_INDEX_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "leakage_current_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Leakage current ratio",
        "suggested_tag": "LEAK_CURR_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surge_test_error_area_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Surge test error area ratio",
        "suggested_tag": "SURGE_ERROR_VAR_CURR_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_stator_hi",
    "analytic_type_display_name": "Motor Stator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_rotor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Rotor Health Index",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "RTR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "RTR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_inductance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Inductance",
        "suggested_tag": "RTR_WNDG_IND_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_impedance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Impedance",
        "suggested_tag": "RTR_WNDG_IMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "phase_angle",
        "required": false,
        "param_type": "input",
        "display_name": "Phase angle",
        "suggested_tag": "RTR_ANGL_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_frequency_response",
        "required": false,
        "param_type": "input",
        "display_name": "Current frequency response",
        "suggested_tag": "RTR_CFR_PH_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_rotor_hi",
    "analytic_type_display_name": "Motor Rotor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_sensor_testing_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Sensor Testing Health Index",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition IR",
        "suggested_tag": "STR_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition IR",
        "suggested_tag": "EXC_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition IR",
        "suggested_tag": "SPACE_HEATER_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition IR",
        "suggested_tag": "BRNG_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition Winding Resistance values",
        "suggested_tag": "STR_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition Winding Resistance values",
        "suggested_tag": "EXC_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition Winding Resistance values",
        "suggested_tag": "SPACE_HEATER_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition Winding Resistance values",
        "suggested_tag": "BRNG_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_sensor_testing_hi",
    "analytic_type_display_name": "Motor Sensor Testing Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_sensor_testing_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Generator Sensor Testing Health Index",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition IR",
        "suggested_tag": "STR_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition IR",
        "suggested_tag": "EXC_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition IR",
        "suggested_tag": "SPACE_HEATER_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition IR",
        "suggested_tag": "BRNG_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_inlet_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Inlet RTD condition (IR)",
        "suggested_tag": "CLNG_INLET_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_outlet_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Outlet RTD condition (IR)",
        "suggested_tag": "CLNG_OUTLET_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "core_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Core RTD condition (IR)",
        "suggested_tag": "CORE_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_rtd_condition_ir",
        "required": false,
        "param_type": "input",
        "display_name": "Oil RTD condition (IR)",
        "suggested_tag": "OIL_IR_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Stator RTD condition Winding Resistance values",
        "suggested_tag": "STR_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "etd_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "ETD RTD condition Winding Resistance values",
        "suggested_tag": "EXC_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Heater RTD condition Winding Resistance values",
        "suggested_tag": "SPACE_HEATER_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "bearing_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Bearing RTD condition Winding Resistance values",
        "suggested_tag": "BRNG_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_inlet_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Cooling Inlet RTD condition (Winding Resistance)",
        "suggested_tag": "CLNG_INLET_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cooling_outlet_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Cooilng Outlet RTD condition (Winding Resistance)",
        "suggested_tag": "CLNG_OUTLET_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "core_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Core RTD condition (Winding Resistance)",
        "suggested_tag": "CORE_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "oil_rtd_condition_winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Oil RTD condition (Winding Resistance)",
        "suggested_tag": "OIL_WNDG_RES_RTD_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_sensor_testing_hi",
    "analytic_type_display_name": "Generator Sensor Testing Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
            "name": "vibration_analytics_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Vibration Analytics Health Index",
            "suggested_tag": "VIB_HI",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "vibration_measurement_de_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement DE Offline",
            "suggested_tag": "GEN_DE_SIDE_MAX_VEL_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "vibration_measurement_de_online",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement DE Online",
            "suggested_tag": "GEN_DE_SIDE_MAX_VEL",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "vibration_measurement_nde_offline",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement NDE Offline",
            "suggested_tag": "GEN_NDE_SIDE_MAX_VEL_OFF",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "vibration_measurement_nde_online",
            "required": false,
            "param_type": "input",
            "display_name": "Vibration measurement NDE Online",
            "suggested_tag": "GEN_NDE_SIDE_MAX_VEL",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "vibration_analytics_hi",
    "analytic_type_display_name": "Vibration Analytics Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_temperature_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Temperature Health Index",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement",
        "suggested_tag": "IR_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_hotspot_by_ir_thermography",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement(hotspot by IR thermography)",
        "suggested_tag": "IR_HOTSPOT_DETCTD_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity",
        "suggested_tag": "HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "other_rtds_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Other RTDs Max Standard Deviation (Core, oil, heater etc.)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_terminal_box",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (Terminal box)",
        "suggested_tag": "TERMNL_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_temperature_hi",
    "analytic_type_display_name": "Motor Temperature Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_temperature_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Temperature Health Index",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement",
        "suggested_tag": "IR_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_hotspot_by_ir_thermography",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement(hotspot by IR thermography)",
        "suggested_tag": "IR_HOTSPOT_DETCTD_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_stator_insulation",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (stator insulation)",
        "suggested_tag": "STR_INS_RTD_TEMP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement_bearing",
        "required": false,
        "param_type": "input",
        "display_name": "IR Thermography measurement (bearing)",
        "suggested_tag": "BRNG_RTD_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity",
        "suggested_tag": "HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "other_rtds_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Other RTDs Max Standard Deviation (Core, exicter, heater etc.)",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_measurement_terminal_box",
        "required": false,
        "param_type": "input",
        "display_name": "Thermography measurement (Terminal box)",
        "suggested_tag": "TERMNL_TEMP_DIFF_AMB_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_temperature_hi",
    "analytic_type_display_name": "Generator Temperature Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
        "name": "motor_generator_csa_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "CSA Health Index",
        "suggested_tag": "CSA_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_signature_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Current signature measurement",
        "suggested_tag": "EQUIP_STATUS",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_generator_csa_hi",
    "analytic_type_display_name": "CSA Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
        "name": "motor_generator_pd_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "PD Analytics Health Index",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "partial_discharge_test",
        "required": false,
        "param_type": "input",
        "display_name": "Partial discharge test (pC)",
        "suggested_tag": "PD_MAX_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "internal_discharge_distributed_micro_voids",
        "required": false,
        "param_type": "input",
        "display_name": "Internal discharge : Distributed micro voids",
        "suggested_tag": "PD_DIST_VOID",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "internal_discharge_delamination",
        "required": false,
        "param_type": "input",
        "display_name": "Internal discharge : Delamination",
        "suggested_tag": "PD_DIST_DELAM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "internal_discharge_debonding",
        "required": false,
        "param_type": "input",
        "display_name": "Internal discharge : Debonding",
        "suggested_tag": "PD_DEBOND",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "slot_discharge_poor_contact",
        "required": false,
        "param_type": "input",
        "display_name": "Slot discharge : Poor contact",
        "suggested_tag": "PD_POOR_CNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "slot_discharge_vibration_sparking",
        "required": false,
        "param_type": "input",
        "display_name": "Slot discharge : Vibration sparking",
        "suggested_tag": "PD_VIB_SPARK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "end_winding_bar_to_bar",
        "required": false,
        "param_type": "input",
        "display_name": "End winding gap and surface discharge : Bar to bar",
        "suggested_tag": "PD_END_WNDG_GAP_SRFC_BAR_TO_BAR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "end_winding_bar_to_ground",
        "required": false,
        "param_type": "input",
        "display_name": "End winding gap and surface discharge : Bar to ground",
        "suggested_tag": "PD_END_WNDG_GAP_SRFC_BAR_TO_GRND",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "end_winding_bar_to_surface",
        "required": false,
        "param_type": "input",
        "display_name": "End winding gap and surface discharge : Surface discharge",
        "suggested_tag": "PD_END_WNDG_GAP_SRFC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "foreign_conductive_materials",
        "required": false,
        "param_type": "input",
        "display_name": "Foreign Coductive Materials: PD from Conductive particles",
        "suggested_tag": "PD_FCM_CONDUCT_PARTCL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_inception_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "PD Inception voltage",
        "suggested_tag": "PD_INCEPT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_rated_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Rated voltage U0 from nameplate",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_generator_pd_hi",
    "analytic_type_display_name": "Motor/Generator PD Analytics Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor", "generator"],
    "parameters": [{
        "name": "motor_generator_condition_factor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Condition Factor Health Index",
        "suggested_tag": "AGE_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "time_duration_since_last_maintenance",
        "required": false,
        "param_type": "input",
        "display_name": "Time duration since last maintenance",
        "suggested_tag": "TIME_DUR_SINCE_LAST_MAINT_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "machine_age",
        "required": false,
        "param_type": "input",
        "display_name": "Machine Age (Commissioning date)",
        "suggested_tag": "COMM_DATE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_body_terminal_box_bushing_cleaning_and_blowering_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Motor body, terminal Box & Bushing. (Cleaning and Blowering) condition",
        "suggested_tag": "GEN_BODY_DUST_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nde_side_fan_cover_fan_cleaning_cleaning_blowering_condition",
        "required": false,
        "param_type": "input",
        "display_name": "NDE side fan cover & Fan cleaning (Cleaning and Blowering) condition",
        "suggested_tag": "NDE_SIDE_FANCOVER_CLEANING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "checking_tightness_of_all_terminals_power_cable_side_star_point_side_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Checking tightness of all terminals (Power cable side & star point side) condition",
        "suggested_tag": "TGHTNESS_OF_TERMNL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_nde_de_side_bearing_grease_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check NDE & DE side Bearing grease condition",
        "suggested_tag": "NDE_DE_SIDE_BEARING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rtd_btd_conditions_connection_tightness_check_condition",
        "required": false,
        "param_type": "input",
        "display_name": "RTD & BTD conditions & Connection tightness check condition",
        "suggested_tag": "RTD_BTD_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "space_heater_connection_resistance_check_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Space Heater connection & Resistance check condition",
        "suggested_tag": "SPACE_HEATR_CONN_RES_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_body_earthing_single_double_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Body Earthing(Single/Double) condition",
        "suggested_tag": "GEN_BODY_EARTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "terminal_box_earthing_main_star_side_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Terminal box Earthing (Main& Star Side) condition",
        "suggested_tag": "TERMNL_BOX_EARTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_frp_coating_over_cable_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check FRP coating over cable condition",
        "suggested_tag": "FRP_COATING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_physical_condition_of_lugs_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check Physical condition of Lugs condition",
        "suggested_tag": "LUGS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_proper_fixing_support_clamping_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of cable proper fixing & support clamping",
        "suggested_tag": "CBL_FIX_CLAMP_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_proper_dressing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of cable proper dressing",
        "suggested_tag": "CBL_DRESSING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_tightness_of_cable_termination_motor_end_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check tightness of cable termination. (Motor end) condition",
        "suggested_tag": "CBL_TGHTNESS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_availability_of_bimetallic_strip_washer_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check availability of bimetallic strip/Washer condition",
        "suggested_tag": "BIMETALLLICSTRIP_WASHER_AVAILAB_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "temp_sticker_sensors_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check Condition of Temp. Sticker/sensors",
        "suggested_tag": "TEMP_STICKER_SENSORS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vibration_sensor_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of vibration sensor",
        "suggested_tag": "VIB_SENSORS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hole_sealing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Check hole sealing condition",
        "suggested_tag": "SEALING_HOLE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "space_heater_circuit_resistance_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Space Heater circuit Resistance condition",
        "suggested_tag": "SPACE_HEATR_CIRCT_RES_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "regreasing_on_the_bearing_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Regreasing/Relubrication on the bearing condition",
        "suggested_tag": "REGREASE_RELUB_ON_BEARING_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "condition_of_insulation_visual",
        "required": false,
        "param_type": "input",
        "display_name": "Check condition of Insulation(Visual)",
        "suggested_tag": "INS_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "repair_of_machine",
        "required": false,
        "param_type": "input",
        "display_name": "Repairation times of machine",
        "suggested_tag": "NO_OF_REPAIRATION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_load",
        "required": false,
        "param_type": "input",
        "display_name": "Current load",
        "suggested_tag": "PH_B_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rated_current",
        "required": false,
        "param_type": "input",
        "display_name": "Rated current from nameplate",
        "suggested_tag": "RATED_CURR",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operational_environment",
        "required": false,
        "param_type": "input",
        "display_name": "Operational environment from nameplate",
        "suggested_tag": "OPT_ENVIRONMNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "user_experience_with_oem_of_motor",
        "required": false,
        "param_type": "input",
        "display_name": "User Experience with OEM of the Motor",
        "suggested_tag": "USER_EXP_OEM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "lubrication_time_interval",
        "required": false,
        "param_type": "input",
        "display_name": "Lubrication time interval (hours) from nameplate",
        "suggested_tag": "LUB_TIME_INTV_HRS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "date_of_last_lubrication",
        "required": false,
        "param_type": "input",
        "display_name": "Date of last lubrication",
        "suggested_tag": "LAST_TIME_LUB",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_generator_condition_factor_hi",
    "analytic_type_display_name": "Condition Factor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_flux_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Flux Health Index",
        "suggested_tag": "FLUX_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flux_monitoring",
        "required": false,
        "param_type": "input",
        "display_name": "Flux Monitoring",
        "suggested_tag": "FLUX_ANALYTICS",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_flux_hi",
    "analytic_type_display_name": "Flux Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["motor"],
    "parameters": [{
        "name": "motor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Motor Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Stator HI",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotor_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Rotor HI",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sensor_testing_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Sensor Testing HI",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vibration_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Vibration Analytics HI",
        "suggested_tag": "VIB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "temp_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Temperature HI",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "csa_hi",
        "required": false,
        "param_type": "input",
        "display_name": "CSA HI",
        "suggested_tag": "CSA_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD Analytics HI",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "age_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Ageing HI",
        "suggested_tag": "AGE_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "motor_hi",
    "analytic_type_display_name": "Motor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Generator Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "stator_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Stator HI",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotor_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Rotor HI",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sensor_testing_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Sensor Testing HI",
        "suggested_tag": "SENS_TEST_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vibration_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Vibration Analytics HI",
        "suggested_tag": "VIB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "temp_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Temperature HI",
        "suggested_tag": "TEMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "csa_hi",
        "required": false,
        "param_type": "input",
        "display_name": "CSA HI",
        "suggested_tag": "CSA_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD Analytics HI",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "age_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Ageing HI",
        "suggested_tag": "AGE_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "flux_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Flux HI",
        "suggested_tag": "FLUX_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_hi",
    "analytic_type_display_name": "Generator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_stator_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "Generator Stator Health Index",
        "suggested_tag": "STR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "STR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "polarization_index",
        "required": false,
        "param_type": "input",
        "display_name": "Polarization index",
        "suggested_tag": "STR_PI_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t1_ion_migration_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T1 (ION MIGRATION TIME CONSTANT) (secs)",
        "suggested_tag": "STR_T1_ION_MIG_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tand_test",
        "required": false,
        "param_type": "input",
        "display_name": "TanD test",
        "suggested_tag": "GEN_TAND_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cap_test",
        "required": false,
        "param_type": "input",
        "display_name": "Capacitance test",
        "suggested_tag": "GEN_CAP_AT_RATED_VOLT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "tan_delta_tip_up",
        "required": false,
        "param_type": "input",
        "display_name": "Tan delta tip up",
        "suggested_tag": "TAN_DELTA_TIP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t2_slow_relaxation_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T2 (SLOW RELAXATION TIME CONSTANT) (secs)",
        "suggested_tag": "STR_T2_SLW_RLX_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t3_interfacial_polarization_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T3 (INTERFACIAL POLARIZATION TIME CONSTANT) (secs)",
        "suggested_tag": "STR_T3_INT_PLRZ_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "elcid",
        "required": false,
        "param_type": "input",
        "display_name": "ELCID (mA)",
        "suggested_tag": "ELCID_CL_FL_OF_CC_FOR_EACH_SLOT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "STR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_charge_ion_migration",
        "required": false,
        "param_type": "input",
        "display_name": "Q1 (CHARGE - ION MIGRATION) [%] ",
        "suggested_tag": "STR_Q1_ION_MIG_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_charge_slow_relaxation",
        "required": false,
        "param_type": "input",
        "display_name": "Q2 (CHARGE - SLOW RELAXATION) [%]",
        "suggested_tag": "STR_Q2_SLW_RLX_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q3_charge_interfacial_polarization",
        "required": false,
        "param_type": "input",
        "display_name": "Q3 (CHARGE - INTERFACIAL POLARIZATION) [%]",
        "suggested_tag": "STR_Q3_INT_PLRZ_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_q2",
        "required": false,
        "param_type": "input",
        "display_name": "Q1/Q2",
        "suggested_tag": "STR_Q1_Q2_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_q3",
        "required": false,
        "param_type": "input",
        "display_name": "Q2/Q3",
        "suggested_tag": "STR_Q2_Q3_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co_c",
        "required": false,
        "param_type": "input",
        "display_name": "Co/C (DISPERSION RATIO)",
        "suggested_tag": "STR_DISP_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_highpot_test",
        "required": false,
        "param_type": "input",
        "display_name": "DC Highpot test[Leakage current value (micro amp)]",
        "suggested_tag": "DC_HIPOT_LEAKAGE_CURR_DEVP_MAX_AT_TV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance_ac_exciter_field_winding",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance (R) AC Exciter Field Winding",
        "suggested_tag": "AC_EXC_FLD_WNDG_INS_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance_exciter_armature_winding",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance (R) Exciter Armature Winding",
        "suggested_tag": "AC_EXC_ARM_WNDG_INS_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance_pmg_stator_winding",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance (R) PMG Stator Winding",
        "suggested_tag": "PMG_STR_WNDG_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_for_exciter_stator",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance for Excitor stator",
        "suggested_tag": "STR_EXC_INS_RES_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_for_exciter_rotor",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance for Excitor Rotor",
        "suggested_tag": "RTR_EXC_INS_RES_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_for_pmg",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance for PMG",
        "suggested_tag": "PMG_INS_RES_RES_DEVP_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "forward_bias_diode_check",
        "required": false,
        "param_type": "input",
        "display_name": "Forward bias Diode check",
        "suggested_tag": "FRWD_BIAS_DIODE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "reverse_bias_diode_check",
        "required": false,
        "param_type": "input",
        "display_name": "Reverse bias Diode check",
        "suggested_tag": "REVS_BIAS_DIODE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_stator_hi",
    "analytic_type_display_name": "Generator Stator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["generator"],
    "parameters": [{
        "name": "generator_rotor_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "generator Rotor Health Index",
        "suggested_tag": "RTR_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance",
        "suggested_tag": "RTR_INS_RES_10MIN_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "winding_resistance",
        "required": false,
        "param_type": "input",
        "display_name": "Winding Resistance",
        "suggested_tag": "RTR_WNDG_RES_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "rotor_impedance_test_abs_max_deviation",
        "required": false,
        "param_type": "input",
        "display_name": "Rotor Impedance test Abs Max Deviation",
        "suggested_tag": "RTR_IMP_DEVP_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t1_ion_migration_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T1 (ION MIGRATION TIME CONSTANT) [secs]",
        "suggested_tag": "RTR_T1_ION_MIG_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t2_slow_releaxation_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T2 (SLOW RELAXATION TIME CONSTANT) [secs]",
        "suggested_tag": "RTR_T2_SLW_RLX_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "t3_interfacial_polarization_time_constant",
        "required": false,
        "param_type": "input",
        "display_name": "T3 (INTERFACIAL POLARIZATION TIME CONSTANT) [secs]",
        "suggested_tag": "RTR_T3_INT_PLRZ_TC_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_charge_ion_migration",
        "required": false,
        "param_type": "input",
        "display_name": "Q1 (CHARGE - ION MIGRATION) [%]",
        "suggested_tag": "RTR_Q1_ION_MIG_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_charge_slow_releaxation",
        "required": false,
        "param_type": "input",
        "display_name": "Q2 (CHARGE - SLOW RELAXATION) [%]",
        "suggested_tag": "RTR_Q2_SLW_RLX_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q3_charge_interfacial_polarization",
        "required": false,
        "param_type": "input",
        "display_name": "Q3 (CHARGE - INTERFACIAL POLARIZATION) [%]",
        "suggested_tag": "RTR_Q3_INT_PLRZ_CHRGE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q1_q2_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Q1/Q2",
        "suggested_tag": "RTR_Q1_Q2_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "q2_q3_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Q2/Q3",
        "suggested_tag": "RTR_Q2_Q3_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dispersion_ratio",
        "required": false,
        "param_type": "input",
        "display_name": "Co/C (DISPERSION RATIO)",
        "suggested_tag": "RTR_DISP_RATIO_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "generator_rotor_hi",
    "analytic_type_display_name": "Generator Rotor Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
        "name": "33kv_ais_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV AIS Circuit Breaker Health Index",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_resistance_measurement_of_contact",
        "required": false,
        "param_type": "input",
        "display_name": "Static resistance measurement of contact",
        "suggested_tag": "CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_time",
        "required": false,
        "param_type": "input",
        "display_name": "Close time (absolute value)",
        "suggested_tag": "CLOSING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_time",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil-1 time",
        "suggested_tag": "TRIPPING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_time",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 time  (absolute value)",
        "suggested_tag": "BACKUP_TRIP_COIL_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_of_each_pole_respect_to_body",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance of each pole respect to body (in close condition)",
        "suggested_tag": "BR_CH_INS_RES_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "opening timing diffrence",
        "suggested_tag": "OPEN_TIME_MAX_DIFF_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "closing_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "closing timing difference",
        "suggested_tag": "CLOSE_TIME_DIFF_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "CLOSE_COIL_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "MTR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "K1_CONTACTOR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_COIL_CURR_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_COIL_CURR_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_COIL_CURR_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "power_cable_terminations",
        "required": false,
        "param_type": "input",
        "display_name": "Power Cable terminations",
        "suggested_tag": "POWER_CBL_TERM_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "current_transformer",
        "required": false,
        "param_type": "input",
        "display_name": "Current transformer",
        "suggested_tag": "CT_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vcb_jaw_contacts_offline",
        "required": false,
        "param_type": "input",
        "display_name": "VCB Jaw Contacts offline",
        "suggested_tag": "VCB_JAW_CNT_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vcb_jaw_contacts_online",
        "required": false,
        "param_type": "input",
        "display_name": "VCB Jaw Contacts online",
        "suggested_tag": "VCB_JAW_CNT_TEMP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "high_voltage_withstand_of_contacts_phA",
        "required": false,
        "param_type": "input",
        "display_name": "High voltage withstand of contacts Phase A",
        "suggested_tag": "HV_PHASE_A",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "high_voltage_withstand_of_contacts_phB",
        "required": false,
        "param_type": "input",
        "display_name": "High voltage withstand of contacts Phase B",
        "suggested_tag": "HV_PHASE_B",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "high_voltage_withstand_of_contacts_phC",
        "required": false,
        "param_type": "input",
        "display_name": "High voltage withstand of contacts Phase C",
        "suggested_tag": "HV_PHASE_C",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "counter_reading",
        "required": false,
        "param_type": "input",
        "display_name": "COUNTER READING",
        "suggested_tag": "COUNTER_READING_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_op",
        "required": false,
        "param_type": "input",
        "display_name": "MAX OPERATION COUNT",
        "suggested_tag": "CB_MAX_OPT_COUNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roller_gap",
        "required": false,
        "param_type": "input",
        "display_name": "ROLLER GAP",
        "suggested_tag": "ROLLER_GAP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "damping_gap",
        "required": false,
        "param_type": "input",
        "display_name": "DAMPING GAP",
        "suggested_tag": "DAMPING_GAP_GO_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_measurement_using_tev",
        "required": false,
        "param_type": "input",
        "display_name": "PD measurement using TEV",
        "suggested_tag": "TEV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_measurement_using_capacitive_probes",
        "required": false,
        "param_type": "input",
        "display_name": "PD measurement using Capacitive probes",
        "suggested_tag": "CAPACITIVE_PROBE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "PD measurement",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vacuum_bottle_high_voltage_test",
        "required": false,
        "param_type": "input",
        "display_name": "Vaccum bottleHigh voltage test",
        "suggested_tag": "VACC_BOTTLE_HIPOT_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "reference_high_voltage",
        "required": false,
        "param_type": "input",
        "display_name": "Reference High Voltage",
        "suggested_tag": "VACC_BOTTLE_HIPOT_REF_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vacuum_bottle_pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Vaccum bottle pressure",
        "suggested_tag": "VI_PRESS_MAX",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_ais_cb_hi",
    "analytic_type_display_name": "33kV AIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
        "name": "33kv_gis_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS Circuit Breaker Health Index",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_time",
        "required": false,
        "param_type": "input",
        "display_name": "Close time (absolute value)",
        "suggested_tag": "CLOSING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_time",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil-1 time",
        "suggested_tag": "TRIPPING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_time",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 time  (absolute value)",
        "suggested_tag": "BACKUP_TRIP_COIL_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "Max contact travel",
        "suggested_tag": "MAX_CNT_TRAVL_DISTANCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "opening timing diffrence",
        "suggested_tag": "OPEN_TIME_MAX_DIFF_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "closing_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "closing timing difference",
        "suggested_tag": "CLOSE_TIME_DIFF_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "CLOSE_COIL_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "TRIPPING_COIL_RES2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "MTR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "K1_CONTACTOR_RES_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_COIL_CURR_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_COIL_CURR_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_COIL_CURR_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "AUX_SUPPLY_VOLT_DC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN1",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL_ACT_CHRG_OPEN2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relay_and_control_function",
        "required": false,
        "param_type": "input",
        "display_name": "Relay & control function, Indicators check",
        "suggested_tag": "RELAY_AND_CNTRL_FUNC_INDICATOR_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_error_with_referance_gauge",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage error with reference gauge(pressure, density, moisture any)",
        "suggested_tag": "PERC_ERROR_OF_GUAGE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_gis_cb_hi",
    "analytic_type_display_name": "33kV GIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
        "name": "33kv_gis_sf6_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS SF6 Health Index",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_measured",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressure measured",
        "suggested_tag": "CH_SF6_PRESS_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_of_chamber",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressured of chamber",
        "suggested_tag": "CH_SF6_PRESS_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_density_measured_in_busbar",
        "required": false,
        "param_type": "input",
        "display_name": "Gas density Measured in Busbar",
        "suggested_tag": "BB_CH_SF6_DENS_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "vacuum_interrupter_condition",
        "required": false,
        "param_type": "input",
        "display_name": "Vacuum Interrupter Condition",
        "suggested_tag": "VCB_INTERRUPT_SF6_PRESS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_sf6_gas_leakage_per_year",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage SF 6 gas Leakage per year",
        "suggested_tag": "CH_SF6_LR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dew_point_measurement_of_sf6_gas",
        "required": false,
        "param_type": "input",
        "display_name": "Dew Point Measurement of SF6 Gas",
        "suggested_tag": "DEW_POINT_POLE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_purity",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 Purity",
        "suggested_tag": "CB_SF6_PURITY_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_gis_sf6_hi",
    "analytic_type_display_name": "33kV GIS SF6 Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "220kv_gis_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV GIS Circuit Breaker Health Index",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_time",
        "required": false,
        "param_type": "input",
        "display_name": "Close time (absolute value)",
        "suggested_tag": "CLOSING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_time",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil-1 time",
        "suggested_tag": "TRIPPING_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_time",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 time  (absolute value)",
        "suggested_tag": "BACKUP_TRIP_COIL_TIME_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "Max contact travel",
        "suggested_tag": "CNT_TRAVEL_DIST_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "opening timing diffrence",
        "suggested_tag": "OPEN_TIME_MAX_DIFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "closing_time_difference",
        "required": false,
        "param_type": "input",
        "display_name": "closing timing difference",
        "suggested_tag": "CLOSE_TIME_DIFF_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52a_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52A contact switching time",
        "suggested_tag": "CB_52A_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52b_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52B contact switching time",
        "suggested_tag": "CB_52B_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Total Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "MAX_COIL_RES_CLOSE_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "MAX_COIL_RES_OPEN1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "MAX_COIL_RES_OPEN2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "SPRING_CHRG_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "CONTCTR_WNDG_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_OPEN_COIL1_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_OPEN_COIL2_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_CLOSE_COIL_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "AUX_SUPPLY_VOLT_DC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL1_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL2_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "CB_AMB_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "atm_humidity_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Atm. Humidity measurement",
        "suggested_tag": "ATM_HUMIDITY_MES",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relay_and_control_function",
        "required": false,
        "param_type": "input",
        "display_name": "Relay & control function, Indicators check",
        "suggested_tag": "RELAY_AND_CNTRL_FUNC_INDICATOR_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_error_with_referance_gauge",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage error with reference gauge(pressure, density, moisture any)",
        "suggested_tag": "PERC_ERROR_OF_GUAGE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wiring_and_relays_condition_in_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Wiring & Relays Conditions in cubical, Control cubical (LCC Panel)",
        "suggested_tag": "WIRING_RELAY_CNTRL_CUBICAL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_cb_hi",
    "analytic_type_display_name": "220kV GIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "220kv_gis_sf6_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV GIS SF6 Health Index",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_measured",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressure measured",
        "suggested_tag": "CH_SF6_PRESS_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_of_chamber",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressured of chamber",
        "suggested_tag": "CB_CH_SF6_PRESS_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_density_measured_in_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "Gas density Measured in each CB pole",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_sf6_gas_leakage_per_year",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage SF 6 gas Leakage per year",
        "suggested_tag": "CH_SF6_LR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dew_point_measurement_of_sf6_gas",
        "required": false,
        "param_type": "input",
        "display_name": "Dew Point Measurement of SF6 Gas",
        "suggested_tag": "DEW_POINT_POLE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_purity",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 Purity",
        "suggested_tag": "CB_SF6_PURITY_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity_content_in_sf6",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity content in SF6(ppmv) (with CB)",
        "suggested_tag": "REL_HUMIDITY_POLE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_sf6_hi",
    "analytic_type_display_name": "220kV GIS SF6 Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "pd_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV GIS PD Health Index",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_pattern_and_growth",
        "required": false,
        "param_type": "input",
        "display_name": " PD Pattern & PD Growth",
        "suggested_tag": "",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online",
        "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp_online",
        "required": false,
        "param_type": "input",
        "display_name": "PD amplitude online ROC",
        "suggested_tag": "CC_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_pd_hi",
    "analytic_type_display_name": "220kV GIS PD Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
        "name": "33kv_ais_busbar_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV AIS Busbar Health Index",
        "suggested_tag": "BB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_pattern_and_pd_growth",
        "required": false,
        "param_type": "input",
        "display_name": "PD Pattern & PD Growth",
        "suggested_tag": "PD_PATTERN_GROWTH_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_amp",
        "required": false,
        "param_type": "input",
        "display_name": "PD Amplitude & Pattern",
        "suggested_tag": "BB_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "roc_pd_amp",
        "required": false,
        "param_type": "input",
        "display_name": "PD Amplitude & Pattern ROC",
        "suggested_tag": "BB_MAX_OF_MAX_PD_AMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "thermography_phase_amb_temp",
        "required": false,
        "param_type": "input",
        "display_name": "IR/FO:Thermography (∆T phase- Ambient temp.) C",
        "suggested_tag": "BB_TEMP_DIFF_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity",
        "suggested_tag": "BB_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "surface_contamination_on_busbar",
        "required": false,
        "param_type": "input",
        "display_name": "Surface contamination on Busbar",
        "suggested_tag": "BB_SRFC_CONTM_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "busbar_supporting_structure",
        "required": false,
        "param_type": "input",
        "display_name": "Busbar supporting structure",
        "suggested_tag": "BB_SUPPRT_STRCT_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_all_interpanel_gaps_are_sealed",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that all interpanel gaps are sealed",
        "suggested_tag": "PANEL_GAP_SEALED_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_all_exposed_busbar_connecting_joints_are_tited",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that all exposed busbar connecting joints are tited with insulation boots or taped properly",
        "suggested_tag": "BB_CONN_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_no_tools_or_loose_parts_are_left_inside_any_compartment",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that no tools or loose parts are left inside any compartment",
        "suggested_tag": "TOOLS_LOOSE_PART_LEFT_COMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ensure_all_main_and_earth_connections_are_tight_and_good_contact_is_maintained",
        "required": false,
        "param_type": "input",
        "display_name": "Ensure that all main & earth connections are tight and that good contact is maintained.",
        "suggested_tag": "MAIN_EARTH_CONN_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "heater_condition_in_busbar",
        "required": false,
        "param_type": "input",
        "display_name": "Heater condition in busbar",
        "suggested_tag": "BB_HEATR_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wiring_and_relays_conditions_in_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Wiring & Relays Conditions in cubical",
        "suggested_tag": "WRNG_RELAY_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "check_alignment_straight_runs_joint_packs_and_directional_change_pieces",
        "required": false,
        "param_type": "input",
        "display_name": "Check alignment, straight runs, joint packs and directional change pieces",
        "suggested_tag": "ALNGMT_RUN_JOINT_DIRECT_CHNAGE_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_ais_busbar_hi",
    "analytic_type_display_name": "33kV AIS Busbar Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_AIS_BAY"],
    "parameters": [{
        "name": "33kv_ais_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV AIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination HI",
        "suggested_tag": "CBL_COMP_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "busbar_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Busbar Component HI",
        "suggested_tag": "BB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_ais_hi",
    "analytic_type_display_name": "33kV AIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["MV_SWGR_GIS_BAY"],
    "parameters": [{
        "name": "33kv_gis_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_hi",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 HI",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination HI",
        "suggested_tag": "CBL_COMP_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "33kv_gis_hi",
    "analytic_type_display_name": "33kV GIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_GIS_BAY"],
    "parameters": [{
        "name": "220kv_gis_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "33kV GIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_CHAMBER_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pd_hi",
        "required": false,
        "param_type": "input",
        "display_name": "PD HI",
        "suggested_tag": "PD_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_hi",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 HI",
        "suggested_tag": "SF6_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_1_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination 1 HI",
        "suggested_tag": "CBL_COMP1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_2_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination 2 HI",
        "suggested_tag": "CBL_COMP2_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cable_chamber_3_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Cable Termination 3 HI",
        "suggested_tag": "CBL_COMP3_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_gis_hi",
    "analytic_type_display_name": "220kV GIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["HV_AIS_BAY"],
    "parameters": [{
        "name": "220kv_ais_cb_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV AIS Circuit Breaker Health Index",
        "suggested_tag": "CB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Contact Time",
        "suggested_tag": "CNT_TIME_AT_C_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pole_discrepancy_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Pole Discrepancy(ms)",
        "suggested_tag": "POLE_DISCREP_AT_C_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "break_mismatch_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Break Mismatch (ms)",
        "suggested_tag": "CLOSE_BREAK_MISMATCH_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_bounce_duration_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Max Bounce Duration (ms)",
        "suggested_tag": "CLOSE_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_bounce_duration_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close Total Bounce Duration(ms)",
        "suggested_tag": "CLOSE_TOTAL_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_bounces_close",
        "required": false,
        "param_type": "input",
        "display_name": "Close No. of Bounces",
        "suggested_tag": "CLOSE_NO_OF_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Contact Time",
        "suggested_tag": "CNT_TIME_AT_O1_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pole_discrepancy_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Pole Discrepancy(ms)",
        "suggested_tag": "POLE_DISCREP_AT_O1_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "break_mismatch_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Break Mismatch (ms)",
        "suggested_tag": "OPEN1_BREAK_MISMATCH_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_bounce_duration_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Max Bounce Duration (ms)",
        "suggested_tag": "OPEN1_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_bounce_duration_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 Total Bounce Duration(ms)",
        "suggested_tag": "OPEN1_TOTAL_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_bounces_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 1 No. of Bounces",
        "suggested_tag": "OPEN1_NO_OF_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Contact Time",
        "suggested_tag": "CNT_TIME_AT_O2_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pole_discrepancy_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Pole Discrepancy(ms)",
        "suggested_tag": "POLE_DISCREP_AT_O2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "break_mismatch_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Break Mismatch (ms)",
        "suggested_tag": "OPEN2_BREAK_MISMATCH_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_bounce_duration_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Max Bounce Duration (ms)",
        "suggested_tag": "OPEN2_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_bounce_duration_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 Total Bounce Duration(ms)",
        "suggested_tag": "OPEN2_TOTAL_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_bounces_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Open Operation 2 No. of Bounces",
        "suggested_tag": "OPEN2_NO_OF_BOUNCE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_close1",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 1 Contact Time Close",
        "suggested_tag": "CNT_TIME_AT_CO1_CLOSE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_open1",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 1 Contact Time Open",
        "suggested_tag": "CNT_TIME_AT_CO1_OPEN_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co_timing1",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 1 CO Timing",
        "suggested_tag": "CNT_TIME_AT_CO1_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_close2",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 2 Contact Time Close",
        "suggested_tag": "CNT_TIME_AT_CO2_CLOSE_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_time_close_open_open2",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 2 Contact Time Open",
        "suggested_tag": "CNT_TIME_AT_CO2_OPEN_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "co_timing2",
        "required": false,
        "param_type": "input",
        "display_name": "Close Open Operation 2 CO Timing",
        "suggested_tag": "CNT_TIME_AT_CO2_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_mechanism_travel",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Mechanical Travel(mm)",
        "suggested_tag": "MECH_TRAVEL_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Contact Travel(mm)",
        "suggested_tag": "CNT_TRAVEL_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_close_over_travel",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Close Over Travel(mm)",
        "suggested_tag": "CLOSE_OVER_TRAVEL_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dcrm_open_rebound",
        "required": false,
        "param_type": "input",
        "display_name": "DCRM Open Rebound Travel(mm)",
        "suggested_tag": "OPEN_REBOUND_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_resistance_measurement_of_contact",
        "required": false,
        "param_type": "input",
        "display_name": "Static resistance measurement of contact",
        "suggested_tag": "STATIC_CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "max_contact_travel",
        "required": false,
        "param_type": "input",
        "display_name": "Max contact travel",
        "suggested_tag": "CNT_TRAVEL_DIST_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "breaker_state",
        "required": false,
        "param_type": "input",
        "display_name": "Breaker State (Open/Closed)",
        "suggested_tag": "CB_STATUS",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_time",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching time(for close operation)",
        "suggested_tag": "CB_CLOSE_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "opening_operation_time",
        "required": false,
        "param_type": "input",
        "display_name": "Opening operation time",
        "suggested_tag": "CB_OPEN_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact separation/Arcing Time[T1-T2] (ms)",
        "suggested_tag": "CB_ARC_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_interrupting_time",
        "required": false,
        "param_type": "input",
        "display_name": "contact interrupting Time (ms)",
        "suggested_tag": "CB_BREAK_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52a_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52A contact switching time",
        "suggested_tag": "CB_52A_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "52b_contact_switching_time",
        "required": false,
        "param_type": "input",
        "display_name": "52B contact switching time",
        "suggested_tag": "CB_52B_CNT_SWITCH_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_separation_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact separation speed(m/s)",
        "suggested_tag": "CB_OPEN_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_touching_speed",
        "required": false,
        "param_type": "input",
        "display_name": "Contact touching speed(m/s)",
        "suggested_tag": "CB_CLOSE_SPEED_DEVP_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "total_operation_number",
        "required": false,
        "param_type": "input",
        "display_name": "Total Operation number",
        "suggested_tag": "CB_OPT_COUNT_TOTAL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "non_fault_interrupt_count",
        "required": false,
        "param_type": "input",
        "display_name": "Non-Fault-Interrupt Count",
        "suggested_tag": "CB_OPT_COUNT_NON_FAULT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contact_wear_for_each_operation",
        "required": false,
        "param_type": "input",
        "display_name": "Contact Wear for Each Operation",
        "suggested_tag": "CB_CNT_WEAR_CUMM",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "accumulated_contact_wear",
        "required": false,
        "param_type": "input",
        "display_name": "Accumulated Contact Wear",
        "suggested_tag": "CB_CNT_WEAR_CUMM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "close_coil_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Close coil Winding Resistance measurement",
        "suggested_tag": "CLOSE_COIL_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "trip_coil_1_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Trip coil -1 coil Winding Resistance measurement",
        "suggested_tag": "OPEN1_COIL_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "back_up_trip_coil_2_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Back up trip coil -2 coil Winding Resistance measurement",
        "suggested_tag": "OPEN2_COIL_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "MTR_WNDG_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contactor_resistance_winding_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance Winding Resistance measurement",
        "suggested_tag": "MES_RES_CONTCTR_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_1",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-1)",
        "suggested_tag": "CB_OPEN_COIL1_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_2",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (open-2)",
        "suggested_tag": "CB_OPEN_COIL2_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "steady_state_coil_current_close",
        "required": false,
        "param_type": "input",
        "display_name": "Average/steady-state coil current (close)",
        "suggested_tag": "CB_CLOSE_COIL_CURR_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_1",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-1",
        "suggested_tag": "CB_BATT_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "battery_voltage_source_2",
        "required": false,
        "param_type": "input",
        "display_name": "Battery voltage source-2",
        "suggested_tag": "DC_AUX_SUPPLY_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_1",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 1",
        "suggested_tag": "CB_BATT_RATED_VOLT",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dc_source_voltage_2",
        "required": false,
        "param_type": "input",
        "display_name": "DC Source Voltage 2",
        "suggested_tag": "CB_AUX_SUPPLY_VOLT_DC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_1",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-1)",
        "suggested_tag": "CB_COIL1_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_open_2",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(open-2)",
        "suggested_tag": "CB_COIL2_ACT_CHRG_OPEN_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "coil_actuation_charge_close",
        "required": false,
        "param_type": "input",
        "display_name": "Coil actuation charge(close)",
        "suggested_tag": "CB_COIL_ACT_CHRG_CLOSE_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet temp",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temperature",
        "suggested_tag": "CB_CABINET_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "each_drive_cabinet_humidity",
        "required": false,
        "param_type": "input",
        "display_name": "Each drive cabinet humidity",
        "suggested_tag": "CB_CABINET_HUMIDITY",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "atm_humidity_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Atm. Humidity measurement",
        "suggested_tag": "ATM_HUMIDITY_MES",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_temp",
        "required": false,
        "param_type": "input",
        "display_name": "IR thermography measurement",
        "suggested_tag": "IR_THERM_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temp (Offline)",
        "suggested_tag": "AMB_TEMP_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "spring_rewind_time",
        "required": false,
        "param_type": "input",
        "display_name": "Spring rewind time",
        "suggested_tag": "CB_MECH_RECHRG_TIME_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "no_of_spring_rewind",
        "required": false,
        "param_type": "input",
        "display_name": "no. of spring rewind",
        "suggested_tag": "CB_MECH_RECHRG_COUNT_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (steady state)",
        "suggested_tag": "CB_MTR_CURR_SS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "motor current (Inrush)",
        "suggested_tag": "CB_MTR_CURR_INRUSH_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "compressor_tank_pressure",
        "required": false,
        "param_type": "input",
        "display_name": "Compressor Tank Pressure",
        "suggested_tag": "COMPR_TANK_PRESS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "compressor_tank_leakage",
        "required": false,
        "param_type": "input",
        "display_name": "Compressor Tank Pressure",
        "suggested_tag": "COMPR_TANK_PRESS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_steady_state",
        "required": false,
        "param_type": "input",
        "display_name": "Pump motor steady state current",
        "suggested_tag": "PNEUMATIC_MTR_CURR_SS_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pump_motor_current_inrush",
        "required": false,
        "param_type": "input",
        "display_name": "Pump motor inrush current",
        "suggested_tag": "PNEUMATIC_MTR_CURR_INRUSH_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "relay_and_control_function",
        "required": false,
        "param_type": "input",
        "display_name": "Relay & control function, Indicators check",
        "suggested_tag": "CB_RELAY_AND_CNTRL_FUNC_INDICATOR_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_error_with_referance_gauge",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage error with reference gauge(pressure, density, moisture any)",
        "suggested_tag": "CB_PERC_ERROR_OF_GUAGE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "CB_MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "CB_MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "CB_MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "CB_LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "CB_MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "insulation_resistance_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Insulation Resistance Measurement of CB Insulators",
        "suggested_tag": "CB_INS_RES_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "wiring_and_relays_condition_in_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Wiring & Relays Conditions in cubical",
        "suggested_tag": "CB_WIRING_RELAY_CNTRL_CUBICAL_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "control_cubical",
        "required": false,
        "param_type": "input",
        "display_name": "Control cubical (LCC Panel) conidition",
        "suggested_tag": "CB_LCC_PANEL_DUST_COND_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "hotspot_wiring_lcc",
        "required": false,
        "param_type": "input",
        "display_name": "Hot Spot in wiring in LCC condition",
        "suggested_tag": "CB_LCC_PANEL_HOTSPOT_IN_WIRE_CHECK",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_pressure_measured_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "Gas pressure measured for each CB pole",
        "suggested_tag": "CB_SF6_PRESS_MES_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_gas_in_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 gas in each Pole of CB",
        "suggested_tag": "CB_SF6_PRESS_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "gas_density_measured_in_each_cb_pole",
        "required": false,
        "param_type": "input",
        "display_name": "Gas density Measured in each CB pole",
        "suggested_tag": "CB_SF6_DENS_MES_MIN",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "percentage_sf6_gas_leakage_per_year",
        "required": false,
        "param_type": "input",
        "display_name": "Percentage SF 6 gas Leakage per year",
        "suggested_tag": "CB_SF6_LEAKAGE_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "dew_point_measurement_of_sf6_gas",
        "required": false,
        "param_type": "input",
        "display_name": "Dew Point Measurement of SF6 Gas",
        "suggested_tag": "DEW_POINT_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "sf6_purity",
        "required": false,
        "param_type": "input",
        "display_name": "SF6 Purity",
        "suggested_tag": "CB_SF6_PURITY_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "humidity_content_in_sf6",
        "required": false,
        "param_type": "input",
        "display_name": "Humidity content in SF6(ppmv) (with CB)",
        "suggested_tag": "REL_HUMIDITY_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_ais_cb_hi",
    "analytic_type_display_name": "220kV AIS Circuit Breaker Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_AIS_BAY"],
    "parameters": [{
        "name": "220kv_ais_isolator_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV AIS Isolator Health Index",
        "suggested_tag": "DIS1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_contact_res_measurement_of_arms",
        "required": false,
        "param_type": "input",
        "display_name": "Static contact resistance measurement of Arms",
        "suggested_tag": "DIS2_ARM_CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "static_contact_res_measurement_of_fingers",
        "required": false,
        "param_type": "input",
        "display_name": "Static contact resistance measurement of Fingers",
        "suggested_tag": "DIS2_FINGERS_CNT_RES_MAX_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "contractor_res_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Contactor Resistance measurement",
        "suggested_tag": "DIS2_CONTACTOR_RES_MAX_DEV_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_winding_res_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Winding Resistance measurement",
        "suggested_tag": "DIS2_MTR_WNDG_RES_MAX_DEV_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_insulation_res_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Insulation Resistance measurement",
        "suggested_tag": "DIS2_INS_RES_MIN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_opening_time",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Opening time",
        "suggested_tag": "DIS2_MTR_OPT_TIME_OPEN_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "motor_closing_time",
        "required": false,
        "param_type": "input",
        "display_name": "Motor Closing time",
        "suggested_tag": "DIS2_MTR_OPT_TIME_CLOSE_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ir_thermography_measurement",
        "required": false,
        "param_type": "input",
        "display_name": "IR thermography measurement",
        "suggested_tag": "DIS2_IR_THERM_MAX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ambient_temp",
        "required": false,
        "param_type": "input",
        "display_name": "Ambient Temp",
        "suggested_tag": "DIS2_AMB_TEMP",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "routine_maintenance_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Routine Maintenance Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_ROUTINE",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "periodic_checkup_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Periodic Checkup Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_PERIODIC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "pre_monsoon_activity_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Pre Monsoon Activity Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_PRE_MONSOON",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_last_maint_date",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Last Maintenance Date",
        "suggested_tag": "DIS2_LAST_MAINT_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "inspection_based_on_oem_freq",
        "required": false,
        "param_type": "input",
        "display_name": "Inspection based on OEM Time Interval Frequency",
        "suggested_tag": "DIS2_MAINT_FREQ_OEM_INSPECTION",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_ais_isolator_hi",
    "analytic_type_display_name": "220kV AIS Isolator Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["HV_AIS_BAY"],
    "parameters": [{
        "name": "220kv_ais_hi_output",
        "required": true,
        "param_type": "output",
        "display_name": "220kV AIS Health Index",
        "suggested_tag": "HEALTH_INDEX",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "cb_chamber_hi",
        "required": false,
        "param_type": "input",
        "display_name": "Circuit Breaker HI",
        "suggested_tag": "CB_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "isolator_hi_1",
        "required": false,
        "param_type": "input",
        "display_name": "Disconnector/Isolator 1 HI",
        "suggested_tag": "DIS1_HI",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "isolator_hi_2",
        "required": false,
        "param_type": "input",
        "display_name": "Disconnector/Isolator 2 HI",
        "suggested_tag": "DIS2_HI",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "220kv_ais_hi",
    "analytic_type_display_name": "220kV AIS Health Index"
},
{
    "for_HI": true,
    "allow_input_from_different_assets": true,
    "additional_asset_types_for_inputs": ["cable"],
    "asset_type": ["Busduct"],
    "parameters": [{
            "name": "busduct_hi_output",
            "required": true,
            "param_type": "output",
            "display_name": "Busduct Health Index",
            "suggested_tag": "HEALTH_INDEX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online",
            "suggested_tag": "BD_PD_MAX_AMP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "roc_pd_amp_online",
            "required": false,
            "param_type": "input",
            "display_name": "PD amplitude online ROC",
            "suggested_tag": "BD_PD_MAX_AMP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_amb_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference wrt ambient temperature online",
            "suggested_tag": "BD_TEMP_POINT_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "ambient_temp",
            "required": false,
            "param_type": "input",
            "display_name": "Ambient temperature online",
            "suggested_tag": "AMB_TEMP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermography_phase_phase_temp_online",
            "required": false,
            "param_type": "input",
            "display_name": "Max temperature difference phase to phase temperature online",
            "suggested_tag": "BD_TEMP_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        },
        {
            "name": "humidity",
            "required": false,
            "param_type": "input",
            "display_name": "Humidity",
            "suggested_tag": "HUMIDITY",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "percent_incremental_sheath_current_measurement",
            "required": false,
            "param_type": "input",
            "display_name": "Percent Incremental leakage Current Measurement",
            "suggested_tag": "CURR_LEAK_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "leakage_current_differences_between_phases",
            "required": false,
            "param_type": "input",
            "display_name": "Leakage current diffrences between phases",
            "suggested_tag": "CURR_LEAK_DEVP_MAX",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "grounding_resistance_near_termination_end",
            "required": false,
            "param_type": "input",
            "display_name": "Grounding resistance near termination end offline(ohm)",
            "suggested_tag": "GRND_RES_ALL_ERTH_LOOP",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busduct_connection_condition",
            "required": false,
            "param_type": "input",
            "display_name": "Busduct connection condition",
            "suggested_tag": "BD_CONN_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busduct_supporting_structure",
            "required": false,
            "param_type": "input",
            "display_name": "Busduct supporting structure condition",
            "suggested_tag": "BD_SUPPRT_STRCT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busduct_earthing_condition",
            "required": false,
            "param_type": "input",
            "display_name": "Busduct earthing condition",
            "suggested_tag": "BD_ERTH_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "busbar_grading_length_surface_condition",
            "required": false,
            "param_type": "input",
            "display_name": "Busbar grading length surface condition",
            "suggested_tag": "BD_GRADING_LENGTH_SRFC_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }, {
            "name": "thermovisions_on_busbar_joints_and_earthing_loops",
            "required": false,
            "param_type": "input",
            "display_name": "Thermovisions on busbar, joints and earthing loops",
            "suggested_tag": "THERM_HOTSPOT_COND_CHECK",
            "default_value": null,
            "settings_value": null
        }
    ],
    "analytic_type": "33kv_busduct_hi",
    "analytic_type_display_name": "33kV Busduct Health Index"
},
{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "methane_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Methane (CH4) Offline",
        "suggested_tag": "MT_OIL_CH4_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethane_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ethane (C2H6) Offline",
        "suggested_tag": "MT_OIL_C2H6_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethylene_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Ethylene (C2H4) Offline",
        "suggested_tag": "MT_OIL_C2H4_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "acetylene_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Acetylene (C2H2) Offline",
        "suggested_tag": "MT_OIL_C2H2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "methane_online",
        "required": false,
        "param_type": "input",
        "display_name": "Methane (CH4) Online",
        "suggested_tag": "MT_OIL_CH4",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethane_online",
        "required": false,
        "param_type": "input",
        "display_name": "Ethane (C2H6) Online",
        "suggested_tag": "MT_OIL_C2H6",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "ethylene_online",
        "required": false,
        "param_type": "input",
        "display_name": "Ethylene (C2H4) Online",
        "suggested_tag": "MT_OIL_C2H4",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "acetylene_online",
        "required": false,
        "param_type": "input",
        "display_name": "Acetylene (C2H2) Online",
        "suggested_tag": "MT_OIL_C2H2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_value_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil Value from Offline",
        "suggested_tag": "NEI_OIL_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_value_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil Value from Online",
        "suggested_tag": "NEI_OIL",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_prev_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 1-Day RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_PREV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil RoC from Offline Values",
        "suggested_tag": "NEI_OIL_ROC_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_current_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil Current RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_duration_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil RoC Duration for Offline Values",
        "suggested_tag": "NEI_OIL_ROC_DURATION_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_1m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 1-Month RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_1M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_3m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 3-Months RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_3M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_oil_roc_6m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Oil 6-Months RoC from Online Values",
        "suggested_tag": "NEI_OIL_ROC_6M",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "nei_oil",
    "analytic_type_display_name": "NEI Oil"
},
{
    "for_HI": false,
    "allow_input_from_different_assets": false,
    "additional_asset_types_for_inputs": [],
    "asset_type": ["Transformer"],
    "parameters": [{
        "name": "carbonmono_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Monoxide (CO) Offline",
        "suggested_tag": "MT_OIL_CO_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "carbondi_offline",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Dioxide (CO2) Offline",
        "suggested_tag": "MT_OIL_CO2_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "carbonmono_online",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Monoxide (CO) Online",
        "suggested_tag": "MT_OIL_CO",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "carbondi_online",
        "required": false,
        "param_type": "input",
        "display_name": "Carbon Dioxide (CO2) Online",
        "suggested_tag": "MT_OIL_CO2",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_value_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper Value Offline",
        "suggested_tag": "NEI_PAPER_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_value_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper Value Online",
        "suggested_tag": "NEI_PAPER",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_prev_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 1-Day RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_PREV",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper RoC from Offline Values",
        "suggested_tag": "NEI_PAPER_ROC_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_current_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper Current RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_duration_offline",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper RoC Duration for Offline Values",
        "suggested_tag": "NEI_PAPER_ROC_DURATION_OFF",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_1m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 1-Month RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_1M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_3m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 3-Months RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_3M",
        "default_value": null,
        "settings_value": null
    }, {
        "name": "nei_paper_roc_6m_online",
        "required": false,
        "param_type": "output",
        "display_name": "NEI Paper 6-Months RoC from Online Values",
        "suggested_tag": "NEI_PAPER_ROC_6M",
        "default_value": null,
        "settings_value": null
    }],
    "analytic_type": "nei_paper",
    "analytic_type_display_name": "NEI Paper"
}
]' WHERE analytic_type_name='MasterAnalyticsUIJson';

;

UPDATE public.version SET version = 8 WHERE type = 'db_version';

--Customer id = 1
-- Madhu
--EEPM Reports Json Transformer

INSERT INTO public.all_jsons(
	asset_id, asset_type_name, json_type, subsystem, json)
	VALUES (0, 'reports', 16, 'transformer', '{
	"pageHeading": "Report",
	"data": [
{
			"mainHeading": "",
			"hasheading": false,
			"isCollapsable": false,
			"widgetWidth": "",
			"className": "",
			"components": [{
				"widgetWidth": "",
				"className": "noBackground",
				"data": [{
					"widgetWidth": "100%",
					"className": "",
					"data": [{
						"customObject": {

						},
						"widgetWidth": "",
						"tagName": "",
						"className": "",
						"height": "",
						"realTagsForWidget": [],
						"alarmIds": [],
						"heading": "",
						"unit": "",
						"isWidget": "false",
						"sideAlarm": "false",
						"displayName": "",
						"componentName": "ReportLogoSection"
					}]
				}]
			}]
		},
		{
			"mainHeading": "",
			"hasheading": false,
			"isCollapsable": false,
			"widgetWidth": "",
			"className": "",
			"components": [{
				"widgetWidth": "",
				"className": "noBackground",
				"data": [{
					"widgetWidth": "100%",
					"className": "",
					"data": [{
					"customObject": [{
								"tagName": "TX_TYPE",
								"displayName": "Equipment Type",
								"directionRight": false
							},
							{
								"tagName": "ASSET_TAG_DESCRIPT",
								"displayName": "Equipment Name",
								"directionRight": false
							},
							{
								"tagName": "MFG_SITE",
								"displayName": "Manufacturing Site",
								"directionRight": false
							},
							{
								"tagName": "BUSS_ZONES",
								"displayName": "Manufacturing Zone",
								"directionRight": false
							},
							{
								"tagName": "PLANT_AREA",
								"displayName": "Process/Plant Area",
								"directionRight": false
							},
							{
								"tagName": "INSTAL_PHASE",
								"displayName": "Installation Phase",
								"directionRight": false
							},
							{
								"tagName": "SUBSTATION",
								"displayName": "Substation",
								"directionRight": false
							},
							{
								"tagName": "MAKE",
								"displayName": "Manufacturer",
								"directionRight": true
							},
							{
								"tagName": "SNO",
								"displayName": "Serial Number",
								"directionRight": true
							},
							{
								"tagName": "YEAR_OF_MFG",
								"displayName": "Year of Manufacturing",
								"directionRight": true
							},
							{
								"tagName": "COMM_DATE",
								"displayName": "Commissioning Date",
								"formatDate": "dd MMM''''''yy",
								"directionRight": true
							},
							{
								"tagName": "VOLT_RATING_HV",
								"displayName": "Rated Voltage HV",
								"directionRight": true
							},
							{
								"tagName": "VOLT_RATING_LV",
								"displayName": "Rated Voltage LV",
								"directionRight": true
							},
							{
								"tagName": "MVA_RATING",
								"displayName": "Rated Power",
								"directionRight": true
							},
							{
								"tagName": "MT_OIL_TYPE",
								"displayName": "Liquid Type",
								"directionRight": true
							},
							{
								"tagName": "",
								"displayName": "Liquid Brand Name",
								"directionRight": true
							},
							{
								"tagName": "OIL_QUANTITY",
								"displayName": "Oil Quantity",
								"directionRight": true
							},
							{
								"tagName": "COOLING_TYPE",
								"displayName": "Type of Cooling",
								"directionRight": true
							},
							{
								"tagName": "",
								"displayName": "OLTC (Yes/No)",
								"directionRight": true
							},
							{
								"tagName": "",
								"displayName": "Liquid Protection System",
								"directionRight": true
							}
						],
						"componentName": "ReportNameplateDetail"
					}]
				}]
			}]
		},
		{
			"mainHeading": "",
			"hasheading": false,
			"isCollapsable": false,
			"widgetWidth": "",
			"className": "",
			"components": [{
				"widgetWidth": "",
				"className": "noBackground",
				"data": [{
					"widgetWidth": "100%",
					"className": "",
					"data": [{
						"customObject": {

						},
						"widgetWidth": "",
						"tagName": "",
						"className": "",
						"height": "",
						"realTagsForWidget": [],
						"alarmIds": [],
						"heading": "Transformer: Health Summary",
						"unit": "",
						"isWidget": "false",
						"sideAlarm": "false",
						"displayName": "",
						"componentName": ""
					}]
				}]
			}]
		},
		
        {
           "mainHeading": "",
           "hasheading": false,
           "isCollapsable": false,
           "widgetWidth": "",
           "className": "",
           "components": [
               {
                   "widgetWidth": "",
                   "className": "noBackground",
                   "data": [
                       {
                           "widgetWidth": "100%",
                           "className": "",
                           "data": [
                               {
                                   "customObject":{
										"barCharts": [
										["MT_SYS_HI"],
										["WNDG1_HI","WNDG2_HI"],
										["OLTC_SYS_HI"],
										["BUSH1A_HI","BUSH1B_HI","BUSH1C_HI","BUSH2A_HI","BUSH2B_HI","BUSH2C_HI"],
										["COOLING_SYS1_HI","COOLING_SYS2_HI"],
										["MT_DGA_HI"]
									]
    
								},
                                   "widgetWidth": "",
                                   "tagName": "",
                                   "className": "",
                                   "height": "",
                                   "realTagsForWidget": [],
                                   "alarmIds": [],
                                   "heading": "Transformer: Component Wise Health Scores",
                                   "unit": "",
                                   "isWidget": "false",
                                   "sideAlarm": "false",
                                   "displayName": "",
                                   "componentName": "ReportHealthScore"
                               }
                           ]
                       }
                   ]
               }
           ]
       },
	   {
           "mainHeading": "",
           "hasheading": false,
           "isCollapsable": false,
           "widgetWidth": "",
           "className": "",
           "components": [
               {
                   "widgetWidth": "",
                   "className": "noBackground",
                   "data": [
                       {
                           "widgetWidth": "100%",
                           "className": "",
                           "data": [
                               {
                                   "customObject":{
										"barTag":"",
										"barThreshold":"MVA_RATING",
										"maxSelect":"10",   
										"defaultReportTag":[     
											["MT_DGA_HI"],
											["MT_SYS_HI"],
											["WNDG1_HI","WNDG2_HI"],
											["OLTC_SYS_HI"],
											["BUSH1A_HI","BUSH1B_HI","BUSH1C_HI","BUSH2A_HI","BUSH2B_HI","BUSH2C_HI"],
											["COOLING_SYS1_HI","COOLING_SYS2_HI"]
										]
								},
                                   "widgetWidth": "",
                                   "tagName": "",
                                   "className": "",
                                   "height": "",
                                   "realTagsForWidget": [],
                                   "alarmIds": [],
                                   "heading": "Transformer: Trend of Health Indexes",
                                   "unit": "",
                                   "isWidget": "false",
                                   "sideAlarm": "false",
                                   "displayName": "",
                                   "componentName": "ReportHealthIndexTrend"
                               }
                           ]
                       }
                   ]
               }
           ]
       },
		{
			"mainHeading": "",
			"hasheading": false,
			"isCollapsable": false,
			"widgetWidth": "",
			"className": "",
			"components": [{
				"widgetWidth": "",
				"className": "noBackground",
				"data": [{
					"widgetWidth": "100%",
					"className": "",
					"data": [{
						"customObject": {
    "DgaOfflineTags": [
      
        {
            "tagName": "MT_OIL_H2_OFF",
            "displayName":"H2",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_O2_OFF",
            "displayName":"O2",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_N2_OFF",
            "displayName":"N2",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_CH4_OFF",
            "displayName":"CH4",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_CO_OFF",
            "displayName":"CO",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_CO2_OFF",
            "displayName":"CO2",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_C2H4_OFF",
            "displayName":"C2H4",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_C2H6_OFF",
            "displayName":"C2H6",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_C2H2_OFF",
            "displayName":"C2H2",
            "type":"string"
        },
        {
            "tagName": "MT_OIL_WATER_CONTENT_OFF",
            "displayName":"H2O-Water Content",
            "type":"string"
        },
        {
            "tagName": "OIL_TEMP_OFF",
            "displayName":"Oil Temperature",
            "type":"string"
        }
        
    ]
},
						"widgetWidth": "",
						"tagName": "",
						"className": "",
						"height": "",
						"realTagsForWidget": [],
						"alarmIds": [],
						"heading": "Transformer: DGA Gases (ppm) -Offline",
						"unit": "",
						"isWidget": "false",
						"sideAlarm": "false",
						"displayName": "",
						"componentName": "DgaReport"
					}]
				}]
			}]
		}
	]
}');



;

UPDATE public.version SET version = 9 WHERE type = 'db_version';

--Customer id = 1
-- Santhosh
--Motor Summary PD Section PDF Link

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
							"tagName": "",
							"tagNames": [
								"VOLT_BALANCE",
								"CURR_BALANCE"
							],
							"heading": "Unbalance",
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
					"showComponent":{ 
                 				"displayName": "PD Diagnostic Guide ",
                 				"redirectLink":"../../../../assets/pd_docs/PD_Diagnostic_Guide_Rotating_Machines.pdf",
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
							"className": "noCSACards item100full",
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

UPDATE public.version SET version = 10 WHERE type = 'db_version';

--Customer id = 1
-- Santhosh
--Generator summary PD Section PDF Link

UPDATE public.all_jsons SET json='{
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
	],
	"SummaryModel": "model1",
	"ShowAlarm": true,
	"LoadData": [
		{
			"tagName": "ACTIVE_POWER",
			"displayName": "Power",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "CURR_PH_B",
			"displayName": "Current",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "VOLT_PH_B",
			"displayName": "Voltage",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "FREQ",
			"displayName": "Frequency",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "POWER_FACTOR",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "THD",
			"displayName": "",
			"directionRight": true,
			"componentName": "NameValueButton"
		}
	],
	"Recommendation":[
		{
			 "componentName":"RecommendationWidget"
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
					"MainHeading": "Generator Status",
					"ScreenName": "CSA Analytics",
					"Configured": "true",
					"NoOfComponents": "9",
					"MainComponentName": "csa",
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
							"ShowThresholds":"true",
							"ShowTagType": true,
							"startAngle": 90,
							"endAngle": 450,
							"alarmIds": [],
							"tagNames": [],
							"heading": "",
							"unit": "",
							"isWidget": "false",
							"sideAlarm": "false",
							"min": "0",
							"max": "100",
							"displayName": "Power Factor",
							"componentName": "RealtimeGauge"
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
					"MainHeading": "Current Signature Analytics",
					"ScreenName": "CSA Analytics",
					"Configured": "true",
					"NoOfComponents": "2",
					"MainComponentName": "csa",
					"redirectLink": "/vital",
					"sideAlarm": "false",
					"unit": "",
					"order": "4",
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
							"heading": "Generator Status",
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
							"className": "noCSACards item100full",
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
					"MainHeading": "Partial Discharge",
					"ScreenName": "PD Analytics",
					"Configured": "true",
					"NoOfComponents": "4",
					"MainComponentName": "pdanalytics",
					"sideAlarm": "",
					"unit": "",
					"order": "3",
					"ShowViewAll": "true",
					"showComponent":{ 
                 				"displayName": "PD Diagnostic Guide ",
                 				"redirectLink":"../../../../assets/pd_docs/PD_Diagnostic_Guide_Rotating_Machines.pdf",
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
							"max": "60",
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
							"max": "190",
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
							"tagName": "CLNG_OUTLET_TEMP",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Cooling Outlet",
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
							"componentName": "RealtimePrecedenceGaugeWidget"
						}
					]
				},
				{
					"MainHeading": "Vibration",
					"ScreenName": "Vibration Analytics",
					"Configured": "true",
					"NoOfComponents": "3",
					"MainComponentName": "vibration/summary",
					"redirectLink": "/",
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
				},
				{
					"MainHeading": "Flux",
					"ScreenName": "Flux Monitoring",
					"Configured": "true",
					"NoOfComponents": "2",
					"MainComponentName": "flux",
					"sideAlarm": "",
					"unit": "",
					"order": "7",
					"ShowViewAll": "true",
					"redirectLink": "/vital",
					"model2Class": "dataListWrapper",
					"className": "fourCol-row cardWrap",
					"location": "right",
					"heading": " ",
					"subHeading": " ",
					"componentName": "Gauge",
					"components": [
						{
							"tagName": "POLE1_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 1 Max NFD",
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
							"tagName": "POLE2_COIL%_NORM_FLUX_DENS",
							"className": "",
							"height": "",
							"realTagsForWidget": [],
							"width": "",
							"alarmIds": [],
							"tagNames": [],
							"prefix": [
								""
							],
							"heading": "Poll 2 Max NFD",
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
WHERE asset_id=0 and asset_type_name = 'generator' 
AND json_type = 0
;

UPDATE public.version SET version = 11 WHERE type = 'db_version';

--Customer id = 1
-- Santhosh
--Cable 0 id Summary PD Section PDF Link

UPDATE public.all_jsons SET json='
{
            "FixedNameplateTags": [
        {
			"tagName": "ASSET_TAG_DESCRIPT",
			"directionRight": false
	    },
        {
			"tagName": "ASSET_CATG",
			"directionRight": false
		},
		{
			"tagName": "MAKE",
			"directionRight": false
		},
		{
			"tagName": "RATED_VOLT",
			"directionRight": false
		},
		{
			"tagName": "YEAR_OF_MFG",
			"directionRight": false
		},
		{
			"tagName": "NO_OF_CORES",
			"directionRight": false
		},
		{
			"tagName": "INS_TYPE",
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
			"tagName": "INPUT_CURR",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
		{
			"tagName": "LINE_VOLT",
			"directionRight": false,
			"componentName": "NameValueButton"
		},
        {
            "tagName": "FREQ",
            "directionRight": true,
            "componentName": "NameValueButton"
        }
	],
	"Recommendation":[
 {
      "componentName":"RecommendationWidget"
 }
],
	"Labels": [{
		"label": "",
		"link": "",
		"data": [{
				"MainHeading": "Health Summary",
				"ScreenName": "health",
				"Configured": "true",
				"NoOfComponents": "6",
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
				"components": [{
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
				"MainHeading": "Partial Discharge",
				"ScreenName": "PD Monitoring",
				"Configured": "true",
				"NoOfComponents": "2",
				"MainComponentName": "PDAnalytics",
				"redirectLink": "/pd/pdrealtime",
				"sideAlarm": "",
				"unit": "",
				"order": "2",
				"ShowViewAll": "true",
                 		"showComponent":{ 
                 			"displayName": "PD Diagnostic Guide ",
                 			"redirectLink":"../../../../assets/pd_docs/PD_Diagnostic_Guide_Cable.pdf",
                 			"componentName": "PdPdflinkComponent"
                		},
				"model2Class": "dataTableWrapper",
				"location": "right",
				"className": "twoCol-row",
				"heading": "Joint ",
				"subHeading": "Fault Type",
				"componentName": "Gauge",
				"components": [{
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
						"prefix": ["INS_", "TER_"],
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
						"isDga": false,
						"max": "100",
						"displayName": "",
						"componentName": "TextWidget"
					}
				]
			},
			{
			"MainHeading": "PD Status By Other Monitoring",
				"ScreenName": "PD Monitoring",
				"Configured": "true",
				"NoOfComponents": "1",
				"MainComponentName": "PDAnalytics",
				"redirectLink": "/pd/pd3dview",
				"sideAlarm": "",
				"unit": "",
				"order": "3",
				"ShowViewAll": "true",
				"model2Class": "dataTableWrapper",
				"location": "right",
				"className": "fourCol-row",
				"heading": "Joint ",
				"subHeading": "Fault Type",
				"componentName": "Gauge",
				"components": 
				[
			       {
                        "tagName": "CBL_LENGTH",
                        "className": "item100",
                        "tagNames":{
						            "pointer":"PD_LOCATION",
									"amplitude":"PD_AMP_3RD_PARTY"
					              	},
                        "realTagsForWidget": [],
                        "height": "",
                        "width": "",
                        "alarmIds": [],
                        "heading": "",
                        "unit": "mts",
                        "prefix":[],
                        "sideAlarm": "false",
						"ShowTagType": true,
                        "min": "0",
                        "displayName": "Cable Length",
                        "componentName": "CableRangeSlider"
                    },
			  {
                        "tagName": "PD_HEALTH_STATUS",
                        "height": "",
                        "width": "",
                        "className": "item25",
                        "alarmIds": [],
                        "tagNames": [],
                        "heading": "",
                        "subHeading": "",
                        "unit": "",
                        "status": {
                            "status1": "Not OK",
                            "status2": "OK"
                        },
                        "sideAlarm": "true",
                        "displayName": "Health Status of PD Monitor Unit 1",
                        "componentName": "CircuitBreaker",
                        "imageName": "Dot"
                    },
                    {
                        "tagName": "PD_HEALTH_STATUS_1",
                        "height": "",
                        "width": "",
                        "className": "item25",
                        "alarmIds": [],
                        "tagNames": [],
                        "heading": "",
                        "subHeading": "",
                        "unit": "",
                        "status": {
                            "status1": "Not OK",
                            "status2": "OK"
                        },
                        "sideAlarm": "true",
                        "displayName": "Health Status of PD Monitor Unit 2",
                        "componentName": "CircuitBreaker",
                        "imageName": "Dot"
                    },
			  {
                        "tagName": "PD_ALARM_NOISE",
                        "height": "",
                        "width": "",
                        "className": "item25",
                        "alarmIds": [],
                        "tagNames": [],
                        "heading": "",
                        "subHeading": "",
                        "unit": "",
                        "status": {
                            "status1": "Alarm",
                            "status2": "Noise"
                        },
                        "sideAlarm": "true",
                        "displayName": "PD Alarm/Noise",
                        "componentName": "CircuitBreaker",
                        "imageName": "Dot"
                    },
			  {
				    "tagName": "PD_POF",
                            "className": "item25",
                            "height": "",
                            "realTagsForWidget": [],
                            "width": "15",
                            "startAngle": 90,
                            "endAngle": 450,
                            "alarmIds": [],
                            "tagNames": [],
                            "heading": "",
                            "unit": "",
                            "isWidget": "false",
                            "sideAlarm": "true",
                            "min": "0",
                            "max": "100",
                            "displayName": "Failure Probability",
                            "componentName": "RealtimeGauge"
                        }
				]
			},
			{
				"MainHeading": "Temperature",
				"ScreenName": "termination",
				"Configured": "true",
				"NoOfComponents": "2",
				"MainComponentName": "temp_and_humidity",
				"sideAlarm": "",
				"redirectLink": "/termination",
				"unit": "",
				"order": "4",
				"location": "right",
				"model2Class": "dataListWrapper",
				"className": "fourCol-row cardWrap",
				"heading": "",
				"subHeading": "",
				"componentName": "",
				"components": [{
						"tagName": "TER1_PH%_TEMP",
						"className": "",
						"height": "",
						"realTagsForWidget": [],
						"width": "",
						"alarmIds": [],
						"tagNames": [],
						"prefix": [
							""
						],
						"heading": "Max Termination 1",
						"unit": "",
						"likeTag": "",
						"precedence": "DESC",
						"isWidget": "false",
						"sideAlarm": "false",
						"ShowTagType": true,
						"min": "0",
						"max": "100",
						"displayName": "",
						"imageName": "tempIcon.gif",
						"componentName": "RealtimePrecedenceGaugeWidget"
					},
					{
						"tagName": "TER1_HUMIDITY",
						"className": "",
						"realTagsForWidget": [],
						"height": "",
						"width": "",
						"alarmIds": [],
						"tagNames": [],
						"heading": "Termination 1",
						"unit": "",
						"isWidget": "false",
						"sideAlarm": "false",
						"ShowTagType": true,
						"min": "0",
						"max": "100",
						"imageName": "humidity.png",
						"componentName": "RealtimeGaugeWidget"
					}
				]
			},
			{
				"MainHeading": "Sheath Current",
				"ScreenName": "Sheath Current",
				"Configured": "true",
				"NoOfComponents": "1",
				"MainComponentName": "current",
				"redirectLink": "/vital",
				"sideAlarm": "false",
				"unit": "",
				"order": "5",
				"location": "left",
				"className": "fourCol-row cardWrap",
				"model2Class": "dataListWrapper",
				"heading": "",
				"subHeading": "",
				"componentName": "",
				"components": [
                    {
						"tagName": "TER1_SHEATH_CURR",
						"className": "",
						"height": "",
						"realTagsForWidget": [],
						"width": "",
						"alarmIds": [],
						"tagNames": [],
						"unit": "",
						"isWidget": "false",
						"sideAlarm": "false",
						"ShowTagType": true,
						"min": "0",
						"max": "2500",
						"heading": "Termination1 Sheath Current",
						"imageName": "CurrentIcon.png",
						"componentName": "RealtimeGaugeWidget",
						"precision":1
					}
				]
			}
		]
	}]
}
'
WHERE asset_id =0 AND asset_type_name='cable' AND json_type=0
;

UPDATE public.version SET version = 12 WHERE type = 'db_version';

