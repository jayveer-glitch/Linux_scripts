#!/bin/bash


RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

print_result() {
	if [ $1 -eq 0 ]; then
		echo -e "${GREEN}[PASS]${NC}$2 "
	else
		echo -e "${RED}[FAILED]${NC}$2 "
	fi
}

echo "Starting network diagnosis"
echo "__________________________"

LOCAL_IP=$(ip route get 1.1.1.1 2>/dev/null | awk '{print $7}')

if [ -z "$LOCAL_IP" ]; then
	print_result 1 "Local IP Check (NO ip found)"
else
	print_result 0 "Local IP Check ($LOCAL_IP)"
fi

GATEWAY_IP=$(ip route | grep default | awk '{print $3}')
ping -c 1 -W 1 $GATEWAY_IP > /dev/null 2>&1
print_result $? "Gateway Connectivity ($GATEWAY_IP)"

nslookup google.com > /dev/null 2>&1
print_result $? "DNS Resolution (google.com)"

TARGET="google.com"
nc -z -w 1 $TARGET 443 > /dev/null 2>&1
print_result $? "Internet Connection ($TARGET)"


