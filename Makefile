.PHONY: publish

env := dev

build:
	rm -rf build
	rm -rf dist
	python setup.py sdist bdist_wheel

publish:
	twine upload dist/* \
		--repository-url https://nexus.blackfynn.io/repository/pypi-$(env)/
