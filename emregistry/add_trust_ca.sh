#!/bin/bash

update-ca-trust enable
cp nginx/devdockerCA.crt /etc/pki/ca-trust/source/anchors/
update-ca-trust extract

