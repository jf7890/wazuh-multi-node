#!/bin/bash
docker run --rm -ti \
  -v $(pwd)/config:/config \
  -v $(pwd)/config/certs:/certificates \
  wazuh/wazuh-certs-generator:0.0.2

chmod -R 755 config/certs
chmod -R 666 config/certs/*.pem