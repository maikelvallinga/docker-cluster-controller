.PHONY: build dist

build:
	python setup.py sdist bdist_wheel

check:
	flake8
	pylint clustercontroller
	pydocstyle

update_packages:
	pip install -U -r requirements.txt

upload_test:
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

upload:
	twine upload dist/*
