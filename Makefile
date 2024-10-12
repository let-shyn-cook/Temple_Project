
# Makefile for automating common tasks

.PHONY: init test lint train

init:
	conda env create -f environment.yml

test:
	pytest tests/

lint:
	flake8 src/

train-ml:
	python src/ml_models/train.py

train-dl:
	python src/dl_models/train.py
