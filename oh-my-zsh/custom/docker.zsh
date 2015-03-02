docker-init() {
  export DOCKER_HOST=tcp://192.168.59.103:2376
  export DOCKER_TLS_VERIFY=1
  export DOCKER_CERT_PATH=/Users/cliff/.boot2docker/certs/boot2docker-vm
}

alias b2d=boot2docker

dip() {
      boot2docker ip
}
