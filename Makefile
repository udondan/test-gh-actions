SHELL := /bin/bash
VERSION := $(shell cat VERSION)

tag:
	@git tag -a "v$(VERSION)" -m 'Creates tag "v$(VERSION)"'
	@git push --tags

untag:
	@git push --delete origin "v$(VERSION)"
	@git tag --delete "v$(VERSION)"

release: tag

re-release: untag tag
