epel:
  cmd:
    - run
    {% if grains['osrelease'].startswith('5') %}
    - name: rpm -Uvh http://mirrors.aliyun.com/epel/epel-release-latest-5.noarch.rpm
    {% elif grains['osrelease'].startswith('6') %}
    - name: rpm -Uvh http://mirrors.aliyun.com/epel/epel-release-latest-6.noarch.rpm
    {% elif grains['osrelease'].startswith('7') %}
    - name: rpm -Uvh http://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
    {% endif %}
    - unless: test -e /etc/yum.repos.d/epel.repo
