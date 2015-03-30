datadog-ppa:
  pkgrepo.managed:
    - name: deb http://apt.datadoghq.com/ stable main
    - keyserver: hkp://keyserver.ubuntu.com:80
    - keyid: C7A7DA52
    - require:
      - pkg: software-properties-common
      - pkg: apt-transport-https

datadog-agent:
  pkg:
    - installed
  service.running:
    - name: datadog-agent
    - sig: /usr/bin/dd-agent
    - require:
      - pkg: datadog-agent