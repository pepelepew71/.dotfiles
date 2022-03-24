#!/usr/bin/env bash

killall conky

## Wait
sleep 5

## Run conky
conky -d -c /home/ych/.config/conky/conky.conf
