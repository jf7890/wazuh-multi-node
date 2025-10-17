#!/bin/bash
docker run --rm -ti \
   -v $(pwd):/config \
   -v $(pwd)/certs:/certificates \
   wazuh/wazuh-certs-generator:0.0.2

chmod -R a+r certs/
chmod -R a+X certs/