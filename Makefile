IMAGE=lucasmior/helm
VERSION=2.9.1

build:
	docker build \
  		--build-arg http_proxy=${http_proxy} \
  		--build-arg https_proxy=${https_proxy} \
  		-t ${IMAGE}:${VERSION} .

run:
	docker run -ti \
  		-v ~/shared/.helm:/root/.helm \
  		-v ~/shared/.kube:/root/.kube \
  		-v ${PWD}:/app \
  		-e http_proxy=${http_proxy} \
  		-e https_proxy=${https_proxy} \
  		-e KUBECONFIG=/root/.kube/config.kube002-ducktales-cd \
  		${IMAGE}:${VERSION}

publish:
	docker push ${IMAGE}:${VERSION}
