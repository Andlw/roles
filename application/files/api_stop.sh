#!/bin/bash
# kill  api service
api_pid=`lsof -i :7020 |awk '{print $2}' |tail -1`
kill  $api_pid
