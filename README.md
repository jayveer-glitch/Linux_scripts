# Linux System Administration Automation Suite 🐧

A collection of Bash scripts designed to automate core System Administration and DevOps tasks, including network diagnostics, log analysis, user provisioning, system monitoring, and disaster recovery.

## 📂 Project Overview

| Script Name | Filename | Description | Key Skills |
|:---|:---|:---|:---|
| **Network Doctor** | `net-doctor.sh` | Diagnoses connectivity issues across IP, Gateway, DNS, and Port layers. | `ip`, `nc`, `awk`, Exit Codes |
| **Log Auditor** | `log-analyzer.sh` | Parses server logs to identify 404/403 errors and top attacking IPs. | `grep`, `uniq`, `sort`, Pipelines |
| **User Onboarding** | `onboard.sh` | Automates bulk user/group creation from CSV data with security checks. | User Management, Loops, `sed` |
| **Live Dashboard** | `dashboard.sh` | Generates a real-time HTML system health dashboard. | HTML Injection, Cron, System Metrics |
| **Backup Manager** | `backup_manager.sh` | Creates compressed backups and enforces a 7-day retention policy. | `tar`, `find`, Retention Logic |

---

## 🚀 How to Use These Scripts

### 1. Network Connectivity Doctor (`net-doctor.sh`)
Automatically checks if the server has a valid IP, can reach the Gateway, resolve DNS, and connect to the internet.
**Usage:**
```bash
./net-doctor.sh

### 2. Automated Log Auditor 
Analyzes a web server log file (server.log) to generate a security report.
Prerequisite: Ensure a file named server.log exists in the same directory.
 Usage:
./log-analyzer.sh

3. User Onboarding Automation (onboard.sh)
Reads a CSV file to create users and assign them to groups.
Prerequisite: Create a file named new_hires.csv with the format: username,group.
Usage (Requires Root):

Bash

sudo ./onboard.sh

4. Real-Time Health Dashboard (dashboard.sh)
Generates an HTML page showing CPU, RAM, Disk, and Uptime stats.
Setup:

Open the script and set OUTPUT_FILE to your desired path.

Serve the directory using Python or Nginx.
Usage:

Bash

sudo ./dashboard.sh
# View output at http://localhost:8000
5. Backup & Retention System (backup_manager.sh)
Archives a source directory and deletes backups older than 7 days.
Usage:

Bash

./backup_manager.sh

🛠️ Setup & Installation
Clone the repository:

Bash

git clone [https://github.com/YOUR_USERNAME/linux-admin-scripts.git](https://github.com/YOUR_USERNAME/linux-admin-scripts.git)
cd linux-admin-scripts
Make scripts executable:

Bash

chmod +x *.sh
Install dependencies (Ubuntu/Debian):

Bash

sudo apt update && sudo apt install net-tools netcat-openbsd dnsutils -y

⚠️ Disclaimer
These scripts are intended for educational and portfolio purposes.

onboard.sh creates real users on your system; use with caution or in a VM.

backup_manager.sh contains logic to delete files; ensure you configure the paths correctly before running.

👨‍💻 Author
[Jayveer Sathvara] Aspiring Linux Administrator & DevOps Engineer
