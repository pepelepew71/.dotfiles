#!/bin/bash

temp=$(sensors | grep -i Composite: | head -n1 | sed -r 's/.*:\s+[\+-]?(.*)°C\s+.*/\1/')

printf 'M2 %s°C' "$temp"