curl -k -v  -X PUT 'https://pdp:8081/pdp/api/createPolicy' --header 'Content-Type: application/json' --header 'Accept: text/plain' --header 'ClientAuth: cHl0aG9uOnRlc3Q=' --header 'Authorization: Basic dGVzdHBkcDphbHBoYTEyMw==' --header 'Environment: TEST' -d '{"configBody": "{\"service\": \"optimizationPolicy\", \"guard\": \"False\", \"content\": {\"policyType\": \"placement_optimization\", \"objective\": \"minimize\", \"objectiveParameter\": {\"operator\": \"sum\", \"parameterAttributes\": [{\"parameter\": \"distance\", \"operator\": \"product\", \"customerLocationInfo\": \"customer_loc\", \"weight\": \"1\", \"resources\": [\"vCPE_Infrastructure_GW_demo_app\"]}, {\"parameter\": \"distance\", \"operator\": \"product\", \"customerLocationInfo\": \"customer_loc\", \"weight\": \"100\", \"resources\": [\"vCPE_Infrastructure_GW_demo_app\"]}, {\"parameter\": \"hpa_score\", \"operator\": \"product\", \"weight\": \"200\", \"resources\": [\"vCPE_Infrastructure_GW_demo_app\"]}]}, \"identity\": \"optimization\", \"policyScope\": [\"vcpe_with_vgw\", \"us\", \"international\", \"ip\", \"vCPE_Infrastructure_GW_demo_app\"]}, \"priority\": \"5\", \"templateVersion\": \"OpenSource.version.1\", \"riskLevel\": \"3\", \"description\": \"Placement Optimization Policy for vCPE_Infrastructure_GW_demo_app\", \"policyName\": \"OSDF_VFC.Placement_Optimization_1\", \"version\": \"1.0\", \"riskType\": \"test\"}", "policyName": "OSDF_VFC.Placement_Optimization_1", "policyConfigType": "MicroService", "onapName": "SampleDemo", "policyScope": "OSDF_VFC"}'