#!/bin/bash
set -m

sleep 100 &
TASK_PID=$!

jobs

kill -STOP $TASK_PID
sleep 1
jobs

bg %1
sleep 1
jobs

( sleep 2 && kill $TASK_PID ) & 
fg %1

kill $TASK_PID 2>/dev/null
