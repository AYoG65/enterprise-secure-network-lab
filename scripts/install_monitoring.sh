#!/bin/bash
set -euo pipefail

useradd --no-create-home --shell /bin/false node_exporter || true
cd /tmp
curl -LO https://github.com/prometheus/node_exporter/releases/latest/download/node_exporter-1.8.1.linux-amd64.tar.gz
tar xvf node_exporter-*.tar.gz
cp node_exporter-*/node_exporter /usr/local/bin/
