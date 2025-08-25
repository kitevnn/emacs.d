#!/bin/bash

cat /etc/os-release | grep "NAME" | sed -n '1p' | awk -F'=' '{print $2}' | tr -d "\""
