#!/usr/bin/env bash

run_simple_http_servers(){
  python3 -m http.server 2222 --directory ./html/2222/ &
  python3 -m http.server 3333 --directory ./html/3333/ &
  python3 -m http.server 4444 --directory ./html/4444/ &
  python3 -m http.server 5555 --directory ./html/5555/ &
}

# print the python3 process info
print_python3_process_info() {
  netstat -plunt | grep python3
}


run_simple_http_servers
print_python3_process_info 2> /dev/null