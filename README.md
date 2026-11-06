# Linux System Monitor 

A simple Bash-based Linux system monitoring project that captures CPU usage, memory usage, disk usage, uptime, and basic system information. 

## Project Objective 

The objective of this project is to demonstrate: 

* GitHub repository creation 
* Branch-based development 
* Git command usage 
* Bash scripting 
* Linux system monitoring 
* Pull Request workflow 
* Code review and merge process 
* Repository and security best practices 

## Project Structure 

```text 
linux-system-monitor/ 
├── README.md 
├── .gitignore 
├── scripts/ 
│ └── system_health.sh 
└── logs/ 
 └── .gitkeep 
 ``` 

 ## System Monitoring Script 

 The script is located at: 

 ```text 
 scripts/system_health.sh 
 ``` 

 It collects the following information: 

 * CPU usage 
 * Memory usage 
 * Disk usage 
 * System uptime 
 * Hostname 
 * Operating system information 
 * Kernel version 
 * System architecture 

 Generated reports are stored inside the `logs` directory. 

 ## How to Run the Script 

 Make the script executable: 

 ```bash 
 chmod +x scripts/system_health.sh 
 ``` 

 Run the script: 

 ```bash 
 ./scripts/system_health.sh 
 ``` 

 View generated logs: 

 ```bash 
 ls -la logs 
 ``` 

 View the report: 

 ```bash 
 cat logs/system_health_*.log 
 ``` 

 ## GitHub Best Practices 

 ### 1. Clear Documentation 

 A repository should contain clear documentation explaining: 

 * Project purpose 
 * Project structure 
 * Installation or setup requirements 
 * How to run the project 
 * Expected output 
 * Contribution process 

 The README should be updated whenever important functionality changes. 

 ### 2. Branch-Based Development 

 Development changes should be made in separate feature branches instead of directly modifying the `main` branch. 

 Example: 

 ```bash 
 git checkout -b feature/system-monitoring 
 ``` 

 This helps isolate changes and keeps the main branch stable. 

 ### 3. Focused Pull Requests 

 Pull Requests should contain a specific and manageable set of changes. 

 A good Pull Request should: 

 * Have a clear title 
 * Explain what was changed 
 * Explain why the change was required 
 * Avoid unrelated modifications 
 * Be small enough to review easily 

 ### 4. Code Reviews 

 Changes should be reviewed before being merged into the main branch. 

 Reviews help identify: 

 * Coding errors 
 * Security risks 
 * Documentation issues 
 * Unexpected changes 
 * Opportunities for improvement 

 ### 5. Repository Controls 

 Important branches such as `main` should be protected when working in collaborative environments. 

 Possible controls include: 

 * Requiring Pull Requests before merging 
 * Requiring approvals 
 * Requiring successful checks 
 * Preventing direct pushes 
 * Restricting force pushes 
 * Restricting branch deletion 

 ### 6. Security Best Practices 

 Sensitive information should never be committed to a Git repository. 

 Examples include: 

 * Passwords 
 * API keys 
 * Authentication tokens 
 * Private certificates 
 * Company confidential information 
 * Production credentials 

 The `.gitignore` file should be used to prevent generated or sensitive files from being accidentally committed. 

 Generated `.log` files in this project are excluded using: 

 ```text 
 logs/*.log 
 ``` 

 ## Development Workflow 

 The workflow followed for this project is: 

 ```text 
 Create Repository 
  | 
   v 
   Create Feature Branch 
    | 
     v 
     Create Project Files 
      | 
       v 
       Develop Bash Script 
        | 
         v 
         Test Script 
          | 
           v 
           Commit Changes 
            | 
             v 
             Push Feature Branch 
              | 
               v 
               Create Pull Request 
                | 
                 v 
                 Review Changes 
                  | 
                   v 
                   Merge into Main 
                   ``` 

                   ## Environment 

                   This project was developed and tested using a GitHub Codespaces Linux environment. 

                   ## Author 

                   Created as part of the GitHub and Linux System Monitoring assignment. 