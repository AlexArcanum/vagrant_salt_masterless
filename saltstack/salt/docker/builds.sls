build_mongodb_image:
  cmd.run:
    - name: docker build -t mongodb_ismean -f /vagrant/docker/MongoDB/Dockerfile .
    - cwd: /vagrant

build_common_components_image:
  cmd.run:
    - name: docker build -t comp_ismean -f /vagrant/docker/Common_Components/Dockerfile .
    - cwd: /vagrant

build_personal_requests_image:
  cmd.run:
    - name: docker build -t preq_ismean -f /vagrant/docker/Personal_Requests/Dockerfile .
    - cwd: /vagrant

