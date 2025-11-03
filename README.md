# uvdemo-workbench

Development workbench for the uvdemo library.

## Project Structure

Both repositories should be cloned side-by-side in the same parent directory:

```
parent-directory/
├── uvdemo/           # The main library
└── uvdemo-workbench/ # This workbench (imports uvdemo as editable dependency)
```

The workbench uses `uvdemo` as an editable dependency via `path = "../uvdemo"`.

## Setup

```bash
just setup
```

This will:
- Install all dependencies (including uvdemo as an editable dependency)
- Configure nbdime for better notebook diff and merge operations

### Alternative (without just)

If `just` is not available, run these commands directly:

```bash
uv sync
uv run nbdime config-git --enable
```

## Features

- Notebooks use `nbdime` for git diff and merge operations
- Imports `uvdemo` as an editable dependency from `../uvdemo`
- All dependencies are automatically inherited from uvdemo

