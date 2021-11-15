#!/bin/bash

kubectl create -f Signer/signer-replica.yaml 
kubectl create -f Signer/attacker-replica.yaml 
