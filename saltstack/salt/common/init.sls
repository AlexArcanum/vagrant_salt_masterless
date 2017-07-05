install_packages:
  pkg.installed:
    - pkgs:
      - ssh
      - tree
      {% if grains['os'] == 'Ubuntu' %}  
      - apt-transport-https
      {% endif %}
    - refresh: True
