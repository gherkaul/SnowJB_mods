#!/bin/sh
adb remount
adb push $2 "/system/$1/"
adb reboot
