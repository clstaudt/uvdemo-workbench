# uvtest-workbench

Development workbench for the uvtest library.

## Setup

```bash
just setup
```

This will:
- Install all dependencies (including uvtest as an editable dependency)
- Configure nbdime for better notebook diff and merge operations

## Usage

```bash
# Start Jupyter Lab
just lab

# Start Jupyter Notebook
just notebook

# Sync dependencies only
just sync
```

## Features

- Notebooks use `nbdime` for git diff and merge operations
- Imports `uvtest` as an editable dependency from `../uvtest`
- All dependencies are automatically inherited from uvtest

