#!/bin/bash
test $(curl $(/sbin/ip route|awk '/default/ { print  $3}'):8765/sum?a=1\&b=2) -eq 3 && echo 'ACCEPT TEST OK' || echo 'ACCEPT TEST NOK'
