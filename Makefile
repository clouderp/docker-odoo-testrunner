#!/usr/bin/make -f

SHELL := /bin/bash


image:
	docker build \
		--build-arg ODOO_VERSION=$$ODOO_VERSION \
		-t cerp/odoo:testing-$$ODOO_VERSION \
		context

hub-image:
	docker push cerp/odoo:testing-$$ODOO_VERSION
