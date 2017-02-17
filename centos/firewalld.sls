http:
  firewalld.service:
    - name: http
    - ports:
      - 80/tcp
      - 8080/tcp

public:
  firewalld.present:
    - name: public
    - services:
      - http
      - ssh
      - dhcpv6-client
