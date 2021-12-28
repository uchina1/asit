#!/bin/bash

kubectl delete -f Signer/Deployments/aws_signer-replica.yaml --force
kubectl delete -f Signer/Deployments/aws_attacker-replica.yaml --force