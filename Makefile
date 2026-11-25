.PHONY: lint test up run
lint:
	ruff check .

#.PHONY: test
test:
	python -m pytest

#.PHONY: up
up:
	docker compose up -d

#.PHONY: run
run:
	python data/generator/generate_data.py