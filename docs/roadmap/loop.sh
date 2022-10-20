#!/bin/bash

while true
do inotifywait -r -e modify .
    make
    sleep 1
    # xdot roadmap.dot
    xdot concept-map.dot
done
