#!/bin/bash
mkdir -p /evidence/documents
mkdir -p /logs
echo "Generando evidencia..."
for i in {1..5}
do
  echo "Confidential Financial Report $i" > /evidence/documents/report_$i.txt
  echo "$(date) - USER uploaded report_$i.txt" >> /logs/activity.log
  sleep 2
done
echo "Evidencia generada correctamente."