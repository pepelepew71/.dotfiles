#!/bin/bash

temp=$(nvidia-smi -q -d temperature | grep -i "GPU Current Temp" | head -n1 | sed -r 's/.* : (.+) C.*/\1/')

printf 'GPU %s°C' "$temp"