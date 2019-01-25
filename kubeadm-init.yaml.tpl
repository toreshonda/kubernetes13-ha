apiVersion: kubeadm.k8s.io/v1beta1
kind: ClusterConfiguration
kubernetesVersion: stable
controlPlaneEndpoint: " K8SHA_IPVIRTUAL:16443"y
networking:
  podSubnet: "K8SHA_CIDR"
  dnsDomain: "cluster.local"
apiServer:
  certSANs:
  - K8SHA_HOSTNAME1
  - K8SHA_HOSTNAME2
  - K8SHA_HOSTNAME3
  - K8SHA_IP1
  - K8SHA_IP2
  - K8SHA_IP3
  - K8SHA_IPVIRTUAL
  - 127.0.0.1
  extraArgs:
    authorization-mode: "Node,RBAC"
  timeoutForControlPlane: 4m0s
controllerManager:
  extraArgs:
    horizontal-pod-autoscaler-use-rest-clients: "true"
    horizontal-pod-autoscaler-sync-period: "10s"
    node-monitor-grace-period: "10s"
    experimental-cluster-signing-duration: "87600h"
certificatesDir: "/etc/kubernetes/pki"

