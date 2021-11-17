#!/bin/bash
eksctl scale nodegroup --cluster=aggs --nodes=$1 --name=Signer --nodes-min=$1 --nodes-max=$1
