#!/bin/bash
# automation_menu.sh - A menu-driven automation tool

while true
do
    echo "============================================"
    echo "         🧠 System Automation Menu"
    echo "============================================"
    echo "1️⃣  Run Backup Script"
    echo "2️⃣  Run Update & Cleanup Script"
    echo "3️⃣  Run Log Monitoring Script"
    echo "4️⃣  Exit"
    echo "--------------------------------------------"
    read -p "Enter your choice [1-4]: " choice

    case $choice in
        1)
            echo "Running Backup Script..."
            ./backup.sh
            ;;
        2)
            echo "Running Update & Cleanup Script..."
            ./update_cleanup.sh
            ;;
        3)
            echo "Running Log Monitoring Script..."
            ./log_monitor.sh
            ;;
        4)
            echo "Exiting... Goodbye, Kasturi 💛"
            break
            ;;
        *)
            echo "❌ Invalid choice! Please try again."
            ;;
    esac

    echo ""
    read -p "Press Enter to return to menu..."
done
