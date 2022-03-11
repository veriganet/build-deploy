#!/usr/bin/env bash


sed -i 's/_ABBREVIATION_/'"$ABBREVIATION"'/g' helm-charts/skaffold.yml

sed -i 's/_DOMAINSVC_/'"$DOMAINSVC"'/g' helm-charts/skaffold.yml

sed -i 's/_LIVE_NODE_PEERING_PORT_/'"$LIVE_NODE_PEERING_PORT"'/g' helm-charts/skaffold.yml

sed -i 's/_KUBERNETES_STORAGE_CLASS_TYPE_/'"$KUBERNETES_STORAGE_CLASS_TYPE"'/g' helm-charts/skaffold.yml

sed -i 's/_KUBERNETES_STORAGE_CLASS_NAME_/'"$KUBERNETES_STORAGE_CLASS_NAME"'/g' helm-charts/skaffold.yml

sed -i 's/_BPOW_KEY_/'"$BPOW_KEY"'/g' helm-charts/skaffold.yml

sed -i 's/_MOSQUITTO_PASSWD_/'"$MOSQUITTO_PASSWD"'/g' helm-charts/skaffold.yml


