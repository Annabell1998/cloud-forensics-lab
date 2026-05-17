#!/bin/bash

LOG_FILE="/logs/activity.log"

mkdir -p /logs /evidence
touch "$LOG_FILE"

timestamp() {
  date -Iseconds
}

write_log() {
  ACTION="$1"
  USERNAME="$2"
  IP="$3"
  FILE="$4"
  STATUS="$5"

  echo "$(timestamp) - ${ACTION} - user=${USERNAME} ip=${IP} file=${FILE} status=${STATUS}" >> "$LOG_FILE"
}

echo "Generando eventos forenses simulados..."

write_log "LOGIN" "admin" "192.168.1.10" "/evidence/case001.txt" "success"
sleep 1

write_log "UPLOAD" "admin" "192.168.1.10" "/evidence/case001.txt" "success"
sleep 1

write_log "FAILED_LOGIN" "user_unknown" "45.83.10.9" "/evidence/" "failed"
sleep 1

for i in 1 2 3 4 5
do
  write_log "MASS_DOWNLOAD" "user_unknown" "45.83.10.9" "/evidence/document_${i}.pdf" "success"
  sleep 1
done

for i in 1 2 3
do
  write_log "DELETE" "user_unknown" "45.83.10.9" "/evidence/document_${i}.pdf" "success"
  sleep 1
done

write_log "CLEAR_LOGS" "user_unknown" "45.83.10.9" "/logs/activity.log" "attempt"

find /evidence -type f -exec sha256sum {} \; > /logs/hashes.txt 2>/dev/null || true

echo "Simulación terminada. Logs escritos en /logs/activity.log"
