#!/bin/bash

kubectl delete -f Signer/signer-replica.yaml 
kubectl delete -f Signer/attacker-replica.yaml 