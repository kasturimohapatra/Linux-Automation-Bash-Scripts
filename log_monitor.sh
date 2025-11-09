#!/bin/bash
# log_monitor.sh - Monitors system logs for specific events

echo "--------------------------------------------"
echo " Starting log monitoring script "
echo "--------------------------------------------"
# Check authentication logs (login attempts)
echo ""
echo "🔐 Recent login attempts:"
sudo tail -n 10 /var/log/auth.log

# Check for recent system errors or warnings
echo ""
echo "⚠️  Recent system warnings and errors:"
sudo grep -i -E "error|fail|warn" /var/log/syslog | tail -n 10

# Optionally monitor kernel messages
echo ""
echo "🧠 Kernel messages (last 10 lines):"
sudo dmesg | tail -n 10

echo ""
echo "--------------------------------------------"
echo " Log monitoring complete! "
echo "--------------------------------------------"
