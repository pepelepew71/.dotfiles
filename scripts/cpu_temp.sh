#!/bin/bash

temp=$(sensors | grep -i Tctl: | head -n1 | sed -r 's/.*:\s+[\+-]?(.*)°C\s+.*/\1/')

printf 'CPU %s°C' "$temp"