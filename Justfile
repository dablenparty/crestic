test: pytest
lint: ruff mypy
fmt: ruff-fmt

pytest:
    uv run pytest

ruff-fmt:
    uvx ruff format

ruff:
    uvx ruff check

mypy:
    uv run mypy .
