test: pytest
lint: ruff mypy
fmt: ruff-fmt
pre-publish: clean sync fmt lint test build

run +args:
    uv run crestic {{args}}

debug +args:
    - env CRESTIC_DRYRUN=1 uv run crestic {{args}}

clean:
    - rm -rf dist/*

build:
    uv build

publish: pre-publish
    uv publish

sync:
    uv sync

pytest:
    uv run pytest

ruff-fmt:
    uvx ruff format

ruff:
    uvx ruff check

mypy:
    uv run mypy .
