#!/bin/bash

EXPERIMENT="$(sudo himage -e pc1)"

sudo ovs-vsctl set port ${EXPERIMENT}-n0-e0 tag=10
sudo ovs-vsctl set port ${EXPERIMENT}-n0-e1 tag=10
sudo ovs-vsctl set port ${EXPERIMENT}-n0-e2 tag=20
sudo ovs-vsctl set port ${EXPERIMENT}-n0-e3 tag=20
sudo ovs-vsctl set port ${EXPERIMENT}-n0-e4 tag=30
sudo ovs-vsctl set port ${EXPERIMENT}-n0-e5 tag=30
echo "done"
