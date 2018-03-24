### DNS

* If using kube-dns:
    ```
    kubectl apply -f dns.yaml
    ```
* If using coredns: Edit proxy line in config to read (`proxy . 8.8.8.8`). For more info refer to the [nameserver docs](https://github.com/coredns/coredns/tree/master/plugin/kubernetes)