#!/usr/bin/env bash

export SKAFFOLD_RELEASE_NAME=test
export SKAFFOLD_RELEASE_NAMESPACE=tst
export LIVE_NODE_PEERING_PORT=7176
export ABBREVIATION=tst
export DOMAINSVC=verigasvc.com

sed 's/_SKAFFOLD_RELEASE_NAME_/'"$SKAFFOLD_RELEASE_NAME"'/g' helm-charts/skaffold.yml > helm-charts/skaffold.yaml
sed -i 's/_SKAFFOLD_RELEASE_NAMESPACE_/'"$SKAFFOLD_RELEASE_NAMESPACE"'/g' helm-charts/skaffold.yaml
sed -i 's/_LIVE_NODE_PEERING_PORT_/'"$LIVE_NODE_PEERING_PORT"'/g' helm-charts/skaffold.yaml
sed -i 's/_ABBREVIATION_/'"$ABBREVIATION"'/g' helm-charts/skaffold.yaml
sed -i 's/_DOMAINSVC_/'"$DOMAINSVC"'/g' helm-charts/skaffold.yaml
