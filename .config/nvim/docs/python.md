# Python development

The `Python` ecosystem has a ton of tools to ease the development experience
related to managing packages and virtual environments. Picking the ones for
your setup can be a daunting task at first.
Luckily there is this [Real Python post](https://realpython.com/python-virtual-environments-a-primer/)
which helps making an informative decision.

### I ended up with following tools:

* [pyenv](https://github.com/pyenv/pyenv): managing different `Python versions`;
    to not interfere with OS installed versions.
* [venv](https://docs.python.org/3/library/venv.html): easy and
    shipped with the standard library.
    - Create new one: `python -m venv .venv --prompt="env-name" --upgrade-deps`
    - My shell is programmed to activate/deactivate these upon changing directories.
* [poetry](https://python-poetry.org/): deterministically install locked versions.
    - Configured to use `in-project` virtualenv.
* [pyright](https://github.com/microsoft/pyright): LSP
    - Configured with [Mason](https://github.com/williamboman/mason.nvim).
    - Looks at the `.venv` project local packages.
