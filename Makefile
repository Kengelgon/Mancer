.PHONY: all init install requirements format

# .PHONY: all init install requirements format test run build docker-run

all: init format 

init:
	pip install --upgrade pip wheel setuptools pip-tools
	make requirements
	make install

install:
	python -m pip install -r requirements-dev.txt

requirements:
	python -m piptools compile --strip-extras --no-emit-index-url --resolver=backtracking -q -o requirements.txt pyproject.toml
	python -m piptools compile --strip-extras --extra dev --no-emit-index-url --resolver=backtracking -q -o requirements-dev.txt pyproject.toml

format:
	python -m black .

# test:
#     python -m pytest

# run:
#     flask run

# docker-build:
#     docker build -t $(IMAGE_NAME) . --progress plain

# docker-run:
#     docker compose up --build --remove-orphans