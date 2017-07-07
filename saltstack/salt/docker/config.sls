create_mean_network:
  dockerng.network_present:
    - name: network_mean

#Copy Unit configuration file and Enable MongoDB system.d service
/etc/systemd/system/mongo.service:
  file.copy:
    - source: /vagrant/systemd/mongo.service
enable_mongodb_service:
    module.run:
        - name: service.enable
        - m_name: mongo.service
    require:
      - name: network_mean
    # require_in:
    #   - enable_common_components_service
    #   - enable_personal_requests_service

#Copy Unit configuration file and Enable Common Components back-end system.d service
/etc/systemd/system/commoncomponents.service:
  file.copy:
    - source: /vagrant/systemd/commoncomponents.service
enable_common_components_service:
    module.run:
        - name: service.enable
        - m_name: commoncomponents.service
    require:
      - name: network_mean
      - service: mongo.service

# #Copy Unit configuration file and Enable Personal Requests back-end system.d service
/etc/systemd/system/personalrequests.service:
  file.copy:
    - source: /vagrant/systemd/personalrequests.service
enable_personal_requests_service:
    module.run:
        - name: service.enable
        - m_name: personalrequests.service
    require:
      - name: network_mean
      - service: mongo.service

