#!/bin/bash
if [ $# -ne 3 ] && [ $# -ne 4 ]; then
  echo "Invalid ! $# args" 1>&2
  echo "Usage: [sig num] [atk num] [aggr's ip-addr]" 1>&2
  exit 1
fi

cat Signer/aws_signer-replica.yaml | sed -e 's/signer-replica-num/'$1'/g' > Signer/Deployments/aws_signer-replica.yaml
cat Signer/aws_attacker-replica.yaml | sed -e 's/attacker-replica-num/'$2'/g' > Signer/Deployments/aws_attacker-replica.yaml
sed -i -e 's/ip-address/'$3'/g' Signer/Deployments/aws_signer-replica.yaml Signer/Deployments/aws_attacker-replica.yaml

kubectl create -f Signer/Deployments/aws_signer-replica.yaml
kubectl create -f Signer/Deployments/aws_attacker-replica.yaml
