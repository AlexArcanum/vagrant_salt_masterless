/etc/systemd/system/commoncomponents.service:
  file.copy:
    - source: /vagrant/systemd/commoncomponents.service

service.enable:
    module.run:
        - name: service.enable
        - m_name: commoncomponents.service
