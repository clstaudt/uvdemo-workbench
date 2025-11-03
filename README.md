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
uv sync
```

This will install all dependencies (including uvdemo as an editable dependency).

## Dev Container Support

This workbench includes a devcontainer configuration that:
- Inherits the base setup from `uvdemo`
- Mounts **both repositories side-by-side** in the container
- Adds Jupyter extension support
- Automatically runs `uv sync` on container creation

To use:
1. Ensure both repos are cloned side-by-side locally
2. Open `uvdemo-workbench` in VS Code with Dev Containers extension
3. Reopen in container - both repos will be available at `/workspaces/`

The side-by-side mounting preserves the `path = "../uvdemo"` editable dependency setup.

## Features

This demo workbench illustrates:
- Using a production library as an **editable dependency** with uv
- Interactive notebooks for testing and experimentation
- Scripts and notebooks that can test library changes in real-time
- Clean separation between production code and development/testing environment
- Automatic dependency inheritance from the main library

