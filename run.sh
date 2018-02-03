#!/bin/sh

rm -rf /var/run/*

exec /usr/sbin/minidlnad -S
