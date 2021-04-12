#!/usr/bin/env bash

python3 -m http.server 2222 --directory ./html/2222/ &
python3 -m http.server 3333 --directory ./html/3333/ &
python3 -m http.server 4444 --directory ./html/4444/ &
python3 -m http.server 5555 --directory ./html/5555/

