apiVersion: kubeadm.k8s.io/v1beta1
kind: ClusterConfiguration
kubernetesVersion: stable
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
controlPlaneEndpoint: "K8SHA_IPVIRTUAL:16443"
controllerManagerExtraArgs:
  horizontal-pod-autoscaler-use-rest-clients: "true"
  horizontal-pod-autoscaler-sync-period: "10s"
  node-monitor-grace-period: "10s"
apiServerExtraArgs:
  runtime-config: "api/all=true"

