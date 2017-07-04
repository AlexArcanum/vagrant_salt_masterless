{% if grains['os'] == 'Ubuntu' %}

apt-transport-https:
  pkg.installed:
    - pkgs:
      - apt-transport-https

apt-get-update:
  cmd.run:
    - name: apt-get update
    - check_cmd:
      - /bin/true

docker-repo:
  pkgrepo.managed:
    - humanname: Official Docker Repository
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu {{ grains.lsb_distrib_codename }} stable #deb https://apt.dockerproject.org/repo debian-{{ grains.lsb_distrib_codename }} main
    - file: /etc/apt/sources.list.d/docker.list
    - keyid: 58118E89F3A912897C070ADBF76221572C52609D
    - keyserver: p80.pool.sks-keyservers.net
    - refresh_db: False
    - require:
      - apt-get-update

{% endif %}

install-docker:  
  pkg.installed:
    - pkgs:
      - docker-ce
    - force_yes: True
    - require:
      - docker-repo    

docker:
  service.running:
    - enable: True
    - reload: True
    - require:
      - install-docker



