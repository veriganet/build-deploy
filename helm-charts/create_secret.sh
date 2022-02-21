#!/bin/bash
kubectl -n tst2 delete secret mosquitto-passwd-live
kubectl -n tst2 create secret generic mosquitto-passwd-live --from-file=passwd
