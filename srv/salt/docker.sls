docker-ppa:
  pkgrepo.managed:
    - name: deb https://get.docker.io/ubuntu docker main
    - keyserver: hkp://keyserver.ubuntu.com:80
    - keyid: 36A1D7869245C8950F966E92D8576A8BA88D21E9
    - require:
      - pkg: software-properties-common
      - pkg: apt-transport-https

lxc-docker:
  pkg:
    - installed
  service.running:
    - name: docker
    - sig: /usr/bin/docker
    - require:
      - pkg: lxc-docker

docker-py:
  pip.installed:
    - reload_modules: True
    - require:
      - cmd: pip