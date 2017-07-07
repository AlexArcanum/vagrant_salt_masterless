install_packages:
  pkg.installed:
    - pkgs:
      - ssh
      - tree
      {% if grains['os'] == 'Ubuntu' %}  
      - apt-transport-https
      - python-apt
      {% endif %}
      - python-pip
    - refresh: True

docker-py:
  pip.installed:
    - require:
      - install_packages
    - upgrade: true