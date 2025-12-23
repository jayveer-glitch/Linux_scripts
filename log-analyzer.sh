
#!/bin/bash

LOG_FILE="server.log"

if [ ! -f "$LOG_FILE" ]; then
	echo "Error $LOG_FILE not found !"
	exit 1
fi

echo "_____Log analysis started_______"


TOTAL_REQ=$(wc -l < "$LOG_FILE")
echo "Total requests: $TOTAL_REQ"

ERROR_404=$(grep -c "404" "$LOG_FILE")
echo "404 errors: $ERROR_404"

ERROR_403=$(grep -c "403" "$LOG_FILE")
echo "403 Forbidden errors: $ERROR_403"

TOP_IP=$(awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1)
echo "Most active IP : $TOP_IP"
