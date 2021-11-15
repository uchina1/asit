#!/bin/bash

sudo kind create cluster --config ./kind.yaml

sudo kind load docker-image asit:latest
