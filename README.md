# uvdemo-workbench

**Demo repository** showcasing a development workbench setup with uv.

This is a companion workbench for the uvdemo library, designed to demonstrate the **production repo + workbench repo pattern** for interactive development, testing, and experimentation with uv's editable dependencies.

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

This demo workbench illustrates:
- Using a production library as an **editable dependency** with uv
- Notebooks with `nbdime` for better git diff and merge operations
- Scripts and notebooks that can test library changes in real-time
- Clean separation between production code and development/testing environment
- Automatic dependency inheritance from the main library

