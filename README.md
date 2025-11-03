# uvtest-workbench

Development workbench for the uvtest library.

## Project Structure

Both repositories should be cloned side-by-side in the same parent directory:

```
parent-directory/
├── uvtest/           # The main library
└── uvtest-workbench/ # This workbench (imports uvtest as editable dependency)
```

The workbench uses `uvtest` as an editable dependency via `path = "../uvtest"`.

## Setup

```bash
just setup
```

This will:
- Install all dependencies (including uvtest as an editable dependency)
- Configure nbdime for better notebook diff and merge operations

### Alternative (without just)

If `just` is not available, run these commands directly:

```bash
uv sync
uv run nbdime config-git --enable
```

## Features

- Notebooks use `nbdime` for git diff and merge operations
- Imports `uvtest` as an editable dependency from `../uvtest`
- All dependencies are automatically inherited from uvtest

