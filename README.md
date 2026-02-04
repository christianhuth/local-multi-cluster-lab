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

Get the kubeconfigs:

```bash
kind get kubeconfig --name cluster-a > ~/.kube/cluster-a.yaml
kind get kubeconfig --name cluster-b > ~/.kube/cluster-b.yaml
kind get kubeconfig --name cluster-c > ~/.kube/cluster-c.yaml
```

Point kubectl to use one of the kubeconfigs:

```bash
KUBECONFIG=~/.kube/cluster-a.yaml kubectl get nodes
```

Change permanent:

```bash
export KUBECONFIG=~/.kube/cluster-a.yaml
```
