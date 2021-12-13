#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Invalid ! $# args" 1>&2
  exit 1
fi
eksctl scale nodegroup --cluster=aggs --nodes=$1 --name=$2 --nodes-min=$1 --nodes-max=$1
