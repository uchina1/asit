#!/bin/bash

kubectl apply -f Verifier/verifier.yaml
kubectl apply -f Aggregator/aggregator.yaml
kubectl apply -f Signer/signer.yaml