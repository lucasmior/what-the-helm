# what-the-helm

### Build
```bash
$ docker build \
  --build-arg http_proxy=${http_proxy} \
  --build-arg https_proxy=${https_proxy} \
  -t lucasmior/helm:2.9.1 .
```

### Run
```bash
$ docker run -ti \
  -v ~/shared/.helm:/root/.helm \
  -v ~/shared/.kube:/root/.kube \
  -v $PWD:/app \
  -e http_proxy=${http_proxy} \
  -e https_proxy=${https_proxy} \
  -e KUBECONFIG=/root/.kube/config.kube002-ducktales-cd \
  lucasmior/helm:2.9.1
```
