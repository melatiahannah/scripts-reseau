#!/bin/bash
echo "Scan des ports ouverts sur localhost..."
for port in {20..25}; do
  nc -zv 127.0.0.1 $port 2>&1 | grep succeeded
done
