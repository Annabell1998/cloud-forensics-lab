#!/bin/bash
echo "Calculando hashes SHA256..."
find /evidence -type f -exec sha256sum {} \; > /logs/hashes.txt
echo "Hashes almacenados en /logs/hashes.txt"