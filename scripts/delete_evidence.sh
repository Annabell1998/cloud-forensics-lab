#!/bin/bash
echo "Iniciando eliminación de evidencia..."
rm -f /evidence/documents/report_3.txt
rm -f /evidence/documents/report_4.txt
echo "$(date) - MALICIOUS USER deleted report_3.txt" >> /logs/activity.log
echo "$(date) - MALICIOUS USER deleted report_4.txt" >> /logs/activity.log
echo "Archivos eliminados."
sleep 2
echo "Intentando limpiar rastros..."
history -c
echo "$(date) - Command history cleared" >> /logs/activity.log