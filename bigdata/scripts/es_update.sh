#!/bin/bash
# update es from 2.4.x to 5.x
# shanyou
#
# following https://www.elastic.co/guide/en/elasticsearch/reference/5.0/restart-upgrade.html
ES_URL=http://es1.inter.htyunwang.com:9200
#Disable shard allocation
curl -XPUT "${ES_URL}/_cluster/settings?pretty" -d'
{
  "persistent": {
    "cluster.routing.allocation.enable": "none"
  }
}'

sleep 10

curl -XPOST "${ES_URL}/_flush/synced?pretty"
