#!/bin/bash 

# Get the repository root directory based on this script's location 
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)" 
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)" 

# Define log directory and log file 
LOG_DIR="$PROJECT_ROOT/logs" 
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S") 
LOG_FILE="$LOG_DIR/system_health_$TIMESTAMP.log" 

# Create log directory if it does not exist 
mkdir -p "$LOG_DIR" 

# Generate system health report 
{ 
 echo "==========================================" 
  echo " Linux System Health Report" 
   echo "==========================================" 
    echo "Date and Time: $(date)" 
     echo 

      echo "---- Basic System Information ----" 
       echo "Hostname: $(hostname)" 
        echo "Operating System:" 
         grep PRETTY_NAME /etc/os-release 2>/dev/null || echo "Operating system information unavailable" 
          echo "Kernel Version: $(uname -r)" 
           echo "Architecture: $(uname -m)" 
            echo 

             echo "---- CPU Usage ----" 
              CPU_INFO=$(top -bn1 2>/dev/null | grep "Cpu(s)" | head -1) 

               if [ -n "$CPU_INFO" ]; then 
                echo "$CPU_INFO" 
                 else 
                  echo "CPU usage information unavailable" 
                   fi 

                    echo 
                     echo "---- Memory Usage ----" 

                      if command -v free >/dev/null 2>&1; then 
                       free -h 
                        else 
                         echo "Memory usage information unavailable" 
                          fi 

                           echo 
                            echo "---- Disk Usage ----" 

                             if command -v df >/dev/null 2>&1; then 
                              df -h / 
                               else 
                                echo "Disk usage information unavailable" 
                                 fi 

                                  echo 
                                   echo "---- System Uptime ----" 

                                    if command -v uptime >/dev/null 2>&1; then 
                                     uptime 
                                      else 
                                       echo "Uptime information unavailable" 
                                        fi 

                                         echo 
                                          echo "==========================================" 
                                           echo "Report completed successfully" 
                                            echo "==========================================" 

                                            } > "$LOG_FILE" 

                                            # Confirm the result 
                                            if [ -f "$LOG_FILE" ]; then 
                                             echo "System health report generated successfully." 
                                              echo "Log file: $LOG_FILE" 
                                              else 
                                               echo "Error: Log file was not created." 
                                                exit 1 
                                                fi