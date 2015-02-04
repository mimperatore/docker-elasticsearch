#!/bin/bash

cluster_name=$1
node_name=$2
publish_host=$3
transport_publish_port=$4
unicast_hosts=$5

/elasticsearch/bin/elasticsearch -Des.config=/elasticsearch/config/elasticsearch.yml --cluster.name=$cluster_name --node.name=$node_name --network.publish_host=$publish_host --transport.publish_port=$transport_publish_port --discovery.zen.ping.multicast.enabled=false --discovery.zen.ping.unicast.hosts=$unicast_hosts
