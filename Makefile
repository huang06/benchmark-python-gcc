SHELL=/bin/bash

.PHONY: all
all:

.PHONY: python
python:
	@rm -rf .venv
	@python3 -m venv .venv
	@.venv/bin/python3 -m pip install -U pip setuptools wheel
	@.venv/bin/python3 -m pip install -r requirements.txt

.PHONY: compare
compare:
	@.venv/bin/python3 -m pyperf compare_to \
			py39-gcc8/py39-gcc8.json \
			py39-gcc12/py39-gcc12.json \
			py310-gcc8/py310-gcc8.json \
			py310-gcc12/py310-gcc12.json \
			--table --table-format=md > result.md

.PHONY: clean
clean:
	@rm -rf py310-gcc12/venv
	@rm -rf py310-gcc8/venv
	@rm -rf py39-gcc12/venv
	@rm -rf py39-gcc8/venv
