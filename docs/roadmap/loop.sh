#!/bin/bash

while true
do inotifywait -e modify roadmap.yaml
    godecide roadmap.yaml stdout > roadmap.dot.tmp
    mv roadmap.dot.tmp roadmap.dot
    sleep 1
done

# ...then start `xdot roadmap.dot` in a separate window
