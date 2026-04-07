#!/bin/bash
echo "Parent PID: $$"
sleep 20 &
echo "Child PID: $!"

ps -o pid,ppid,cmd
ps --ppid $$
