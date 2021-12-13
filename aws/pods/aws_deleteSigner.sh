#!/bin/bash

kubectl delete -f Signer/Deployments/aws_signer-replica.yaml 
kubectl delete -f Signer/Deployments/aws_attacker-replica.yaml