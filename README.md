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
Analyzes a web server log file (server.log) to generate a security report. Prerequisite: Ensure a file named server.log exists in the same directory.
 Usage:
