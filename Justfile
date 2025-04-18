test:
    uv run pytest

fmt:
    uvx ruff format

lint:
    uvx ruff check
    uvx mypy .
