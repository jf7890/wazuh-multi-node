#!/bin/bash
docker run --rm -ti \
  -v $(pwd)/config:/config \
  -v $(pwd)/config/certs:/certificates \
  wazuh/wazuh-certs-generator:0.0.2

sudo chmod -R 755 config/certs
sudo chmod -R 666 config/certs/*.pem