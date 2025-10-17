#!/bin/bash
docker run --rm -ti \
  -v $(pwd)/config:/config \
  -v $(pwd)/config/certs:/certificates \
  wazuh/wazuh-certs-generator:0.0.2

sudo chmod -R a+r config/certs/*.pem
sudo chmod -R a+rx config/certs
sudo chown -R 1000:1000 config/certs