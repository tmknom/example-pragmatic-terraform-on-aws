#!/bin/sh
yum install -y ${package}
systemctl start ${package}
