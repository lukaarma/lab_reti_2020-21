#!/bin/bash

EXPERIMENT="$(sudo himage -e pc1)"

sudo ovs-vsctl set port ${EXPERIMENT}-n0-e1 tag=20
sudo ovs-vsctl set port ${EXPERIMENT}-n0-e2 tag=10
sudo ovs-vsctl set port ${EXPERIMENT}-n1-e1 tag=10
sudo ovs-vsctl set port ${EXPERIMENT}-n1-e2 tag=20
sudo ovs-vsctl set port ${EXPERIMENT}-n1-e3 tag=30
sudo ovs-vsctl set port ${EXPERIMENT}-n1-e4 tag=30

sudo ovs-vsctl show
echo "done VLAN"

sudo ovs-vsctl set port ${EXPERIMENT}-n0-e0 trunk=10,20
sudo ovs-vsctl set port ${EXPERIMENT}-n1-e0 trunk=10,20

sudo ovs-vsctl show
echo "done TRUNKING"
