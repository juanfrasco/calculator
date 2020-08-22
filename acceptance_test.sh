#!/bin/bash
CALCULATOR_IP=$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" calculator)
test $(curl $CALCULATOR_IP:8765/sum?a=1\&b=2) -eq 3 && echo "Acceptance Test OK" || echo "Acceptance Test NOK"
