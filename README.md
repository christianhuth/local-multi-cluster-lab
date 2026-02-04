# Local Multi-Cluster Lab with KIND

## Prerequisites

- [KIND](https://kind.sigs.k8s.io/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

## Installation

Simply run:

```bash
./start_lab.sh
```

## Support for Services of Type LoadBalancer

This can be executed before or after starting the Lab.

```bash
go install sigs.k8s.io/cloud-provider-kind@latest
cloud-provider-kind
```

## Access to Clusters

```bash
kind get kubeconfig --name cluster-a > ~/.kubeconfig/cluster-a.yaml
kind get kubeconfig --name cluster-b > ~/.kubeconfig/cluster-b.yaml
kind get kubeconfig --name cluster-c > ~/.kubeconfig/cluster-c.yaml
```
