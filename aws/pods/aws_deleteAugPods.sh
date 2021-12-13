#!/bin/bash

kubectl delete pods aug-verifier-aggs aug-aggregator-aggs
kubectl delete -f Signer/Deployments/aws_aug-signer-replica.yaml 
kubectl delete -f Signer/Deployments/aws_aug-attacker-replica.yaml 