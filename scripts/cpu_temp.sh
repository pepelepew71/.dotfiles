#!/bin/bash
sensors k10temp-pci-00c3 | grep 'Tctl' | cut -c16-22
