#!/usr/bin/env bash

# consolidate logs.txt 

#printf '%(%a %d %b - %l:%M %p)T: %s\n' "-1" "Training OnlineRF..."
#printf '%(%a %d %b - %l:%M %p)T: %s\n' "-1" "Starting replay at $MBPS Mbps..."

MAL_COUNT=$(grep -c "label: MAL" ../MalDetect/build/logs.txt)
LEG_COUNT=$(grep -c "label: LEG" ../MalDetect/build/logs.txt)
PRED_MAL_COUNT=$(grep -c "prediction: MAL" ../MalDetect/build/logs.txt)
PRED_LEG_COUNT=$(grep -c "prediction: LEG" ../MalDetect/build/logs.txt)

echo "Malicious flows count:  $MAL_COUNT"
echo "Legitimate flows count: $LEG_COUNT"
echo
echo "Predictions: MAL: $PRED_MAL_COUNT"
echo "Predictions: LEGITIMATE: $PRED_LEG_COUNT"

