#!/bin/bash

kind create cluster --config cluster-a.yaml
kind create cluster --config cluster-b.yaml
kind create cluster --config cluster-c.yaml

# kind get kubeconfig --name cluster-a > ~/.kube/configs/kind/local-multi-cluster-a.yaml
# kind get kubeconfig --name cluster-b > ~/.kube/configs/kind/local-multi-cluster-b.yaml
# kind get kubeconfig --name cluster-c > ~/.kube/configs/kind/local-multi-cluster-c.yaml
