#!/bin/bash
echo "export DOCKER_GROUP_ID=\$(stat -c \"%g\" /var/run/docker.sock)" >> ~/.profile
echo "export OS_RELEASE=\$(lsb_release -cs)" >> ~/.profile
echo "export RUNMODE=\"DEV\"" >> ~/.profile
