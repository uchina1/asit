#!/bin/bash

kubectl delete pods sw-1-verifier-aggs sw-1-aggregator-aggs
kubectl delete -f Signer/Deployments/aws_signer-replica.yaml 
kubectl delete -f Signer/Deployments/aws_attacker-replica.yaml 