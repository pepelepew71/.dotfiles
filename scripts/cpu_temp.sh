#!/bin/bash
sensors k10temp-pci-00c3 | grep 'Tdie' | cut -c16-22
