#!/bin/bash
kubectl -n tst3 delete secret mosquitto-passwd-live
kubectl -n tst3 create secret generic mosquitto-passwd-live --from-file=passwd
