#!/bin/bash
kubectl -n tst1 delete secret mosquitto-passwd-live
kubectl -n tst1 create secret generic mosquitto-passwd-live --from-file=passwd
