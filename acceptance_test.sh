#!/bin/bash
test $(curl localhost:8765/sum?a=1\&b=2) -eq 3 && echo "Acceptance Test OK" || echo "Acceptance Test NOK"
