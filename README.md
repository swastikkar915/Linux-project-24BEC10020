# The Open Source Audit: Python
A Capstone Project for the OSS NGMC Course.

## Student Information
- **Name:** Swastik Kumar Kar
- **Registration Number:** 24BEC10020
- **Course:** Open Source Software

## Project Overview
The Python Software Foundation runs Python, an open-source programming language. This repository has a structured audit of Python. We chose Python because it has a huge effect on the open-source community, its license is very flexible, and its philosophy is to be easy to read and understand.

## Contents
1. **OSS Audit Report (PDF):** An in-depth look at Python's past, its licensing (the PSF License), and its ecosystem.
2. **Shell Scripts:** Five useful Linux automation scripts that show off basic command-line skills.
## Shell Scripts Description

### 1. System Identity Report (`script1.sh`)
Shows a quick picture of the current Linux environment, such as the kernel version, uptime, and the user's software choice.

### 2. FOSS Package Inspector (`script2.sh`)
Using a "case" statement, it checks to see if Python is installed on the system, shows the version information, and gives a brief description of what it does.
### 3. Disk and Permission Auditor (`script3.sh`)
Scans important system directories to find out how much disk space is being used and what permissions files have. This helps find where Python-related settings might be.
### 4. Log File Analyzer (`script4.sh`)
A diagnostic tool that looks through system log files for certain words, like "ERROR" or "PYTHON," and gives a summary of how many times they happened.

### 5. Open Source Manifesto Generator (`script5.sh`)
A script that lets users interact with it to make a custom "Open Source Manifesto" text file.

## How to Run the Scripts
1. **Clone the repository:**  
    ```bash  
    git clone [your-repo-url]  
    cd [repo-name]  
    ```  
2. **Make the scripts executable:**  
    ```bash  
    chmod +x *.sh  
    ```  
3. **Execute a script:**  
    ```bash  
    ./script1.sh  
    ```  

*Note: These scripts are designed for a Linux environment.*
