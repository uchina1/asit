#!/bin/bash

kubectl delete pods verifier-aggs aggregator-aggs
kubectl delete -f Signer/signer-replica.yaml 