# Setup the development environment
setup:
    uv sync
    uv run nbdime config-git --enable
    @echo "✓ Setup complete!"

# Sync dependencies
sync:
    uv sync

# Start Jupyter Lab
lab:
    uv run jupyter lab

# Start Jupyter Notebook
notebook:
    uv run jupyter notebook

