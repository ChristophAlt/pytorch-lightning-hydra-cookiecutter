# Python PyTorch Lightning Hydra Cookiecutter

## Features
- Testing with [pytest](https://docs.pytest.org/en/latest/)
- Formatting with [black](https://github.com/psf/black)
- Import sorting with [isort](https://github.com/timothycrosley/isort)
- Static typing with [mypy](http://mypy-lang.org/)
- Linting with [flake8](http://flake8.pycqa.org/en/latest/)
- Git hooks that run all the above with [pre-commit](https://pre-commit.com/)
- Deployment ready with [Docker](https://docker.com/)
- Continuous Integration with [GitHub Actions](https://github.com/features/actions)

## Quickstart
```sh
# Install pipx if pipenv and cookiecutter are not installed
python3 -m pip install pipx
python3 -m pipx ensurepath

# Install pipenv using pipx
pipx install pipenv

# Use cookiecutter to create project from this template
pipx run cookiecutter gh:christophalt/pytorch-lightning-hydra-cookiecutter

# Enter project directory
cd <repo_name>

# Initialise git repo
git init

# [OPTIONAL] Create conda environment
bash bash/setup_conda.sh

# Activate conda environment
conda activate <env_name>

# install requirements
pip install -r requirements.txt

# Setup pre-commit and pre-push hooks
pre-commit install -t pre-commit
pre-commit install -t pre-push
```

# Appreciation
This template is largely based on the following projects:
- Python Best Practices Cookiecutter template by Sourcery AI [[LINK]](https://github.com/sourcery-ai/python-best-practices-cookiecutter)
- Lightning-Hydra-Template by ashleve [[LINK]](https://github.com/ashleve/lightning-hydra-template)
