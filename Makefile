install:
	pip install --upgrade pip && \
		pip install -r requirements.txt


test:
	python -m pytest -vv test_hello.py
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C hello
	
all: lint test
	