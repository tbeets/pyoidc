#!/bin/bash

# Munged for my Mac
HOST_IP=$(ifconfig | grep 'inet'| grep -v 'inet6' | grep -v '127.0.0.1' | grep -v '172.' | awk '{ print $2}' | head -1)

echo "HOST IP: " "${HOST_IP}"

docker run -d \
    --name op \
    -p 8092:8092 \
    -e HOST_IP="${HOST_IP}" \
    -i -t \
    itsdirg/pyoidc_example_op

docker run -d \
    --name rp \
    -p 8666:8666 \
    -e HOST_IP="${HOST_IP}" \
    -i -t \
    itsdirg/pyoidc_example_rp