# Setup the development environment
setup:
    uv sync
    uv run nbdime config-git --enable
    @echo "✓ Setup complete!"


