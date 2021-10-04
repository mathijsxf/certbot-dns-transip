FROM python:3.6
COPY . /opt/certbot-dns-transip
COPY .VERSION /opt/certbot-dns-transip/certbot_dns_transip/.VERSION
COPY LICENSE /opt/certbot-dns-transip/certbot_dns_transip/LICENSE
COPY AUTHORS.rst /opt/certbot-dns-transip/certbot_dns_transip/AUTHORS.rst
COPY CONTRIBUTING.rst /opt/certbot-dns-transip/certbot_dns_transip/CONTRIBUTING.rst
COPY HISTORY.rst /opt/certbot-dns-transip/certbot_dns_transip/HISTORY.rst
COPY README.rst /opt/certbot-dns-transip/certbot_dns_transip/README.rst
COPY USAGE.rst /opt/certbot-dns-transip/certbot_dns_transip/USAGE.rst

RUN pip install -e /opt/certbot-dns-transip/
ENTRYPOINT ["certbot"]
