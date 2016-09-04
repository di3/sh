#!/bin/bash
for share in $(comm -13 <(mount | awk '{ print $3 }' | sort -u) <(grep -v ^# /etc/fstab | grep noauto | awk '{ print $2}' | sort -u)); do mount $share; done
