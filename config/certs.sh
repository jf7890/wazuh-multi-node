#!/bin/bash
docker run --rm -ti \
   -v $(pwd):/config \
   -v $(pwd)/certs:/certificates \
   wazuh/wazuh-certs-generator:0.0.2