#!/bin/bash
if [ $# -ne 3 ]; then
  echo "Invalid ! $# args" 1>&2
  echo "Usage: [sig num] [atk num] [aggr's ip-addr]" 1>&2
  exit 1
fi

cp Signer/aws_signer-replica.yaml Signer/Deployments
cp Signer/aws_attacker-replica.yaml Signer/Deployments

sed -i "" 's/signer-replica-num/'$1'/g' Signer/Deployments/aws_signer-replica.yaml
sed -i "" 's/attacker-replica-num/'$2'/g' Signer/Deployments/aws_attacker-replica.yaml

sed -i "" 's/ip-address/'$3'/g' Signer/Deployments/aws_signer-replica.yaml
sed -i "" 's/ip-address/'$3'/g' Signer/Deployments/aws_attacker-replica.yaml

kubectl create -f Signer/Deployments/aws_signer-replica.yaml 
kubectl create -f Signer/Deployments/aws_attacker-replica.yaml
