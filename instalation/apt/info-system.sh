#!/bin/bash

echo "Kernel actual: $(uname -r)"
echo "$(lscpu | grep ".*model" | awk '{print $0}')"
echo "Espacio libre: $(df -h | grep "/$" | awk '{print $4}')"
echo "Espacio total: $(df -h | grep "/$" | awk '{print $2}')"
echo "RAM actual: $(free -m | grep "Mem" | awk '{print $2}')"
echo "Sistema operativo: $(uname -a)"
