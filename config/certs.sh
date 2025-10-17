#!/bin/bash
 docker run --rm -ti \
   -v $(pwd)/config:/config \
   -v $(pwd)/certs:/certificates \
   wazuh/wazuh-certs-generator:0.0.2
