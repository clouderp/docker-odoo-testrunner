# clouderp/odoo
#
# VERSION       0.0.1


ARG ODOO_VERSION
ARG BUILD_FROM=odoo:$ODOO_VERSION

# Root stage
FROM $BUILD_FROM

USER root
ENV ODOO_VERSION=$ODOO_VERSION

RUN apt update \
	&& apt install -y -qq --no-install-recommends build-essential python3-dev \
	&& apt clean \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN pip3 install -U pip setuptools\
	&& pip3 install -U coverage flake8 pygments
COPY ./bin/* /usr/local/bin/
COPY ./coverage.cfg /usr/local/share/coverage.cfg

USER odoo
