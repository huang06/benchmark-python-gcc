# Benchmarking the Python performances with different GCC versions

The aim of this repository is to compare the Python performances compiled with different versions of GCC.

The Benchmark matrix:

- Python
  - 3.9.13
  - 3.10.6
- GCC
  - 8.5.0
  - 12.1.0

## Candidate Docker Images

```bash
# GCC 8 for Python 3.9
docker run --rm -it -v ${PWD}/py39-gcc8:/root/py39-gcc8 -w /root/py39-gcc8 docker.io/library/gcc:8.5.0-buster bash

# GCC 8 for Python 3.10
docker run --rm -it -v ${PWD}/py310-gcc8:/root/py310-gcc8 -w /root/py310-gcc8 docker.io/library/gcc:8.5.0-buster bash

# GCC 12 for Python 3.9
docker run --rm -it -v ${PWD}/py39-gcc12:/root/py39-gcc12 -w /root/py39-gcc12 docker.io/library/gcc:12.1.0-bullseye bash

# GCC 12 for Python 3.10
docker run --rm -it -v ${PWD}/py310-gcc12:/root/py310-gcc12 -w /root/py310-gcc12 docker.io/library/gcc:12.1.0-bullseye bash
```

## Configurations

Install pyenv.

```bash
echo 'export PYENV_ROOT="/root/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
cd ~/.pyenv && src/configure && make -C src

echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc
```

Verification.

```bash
$ pyenv --version

pyenv 2.3.3
```

Compile specific Python version.

```bash
pyenv install 3.9.13
pyenv install 3.10.6
```

Override the default Python to the specific version.

```bash
pyenv global 3.9.13
pyenv global 3.10.6

pyenv rehash
```

Verification.

```
$ python3 -VV

Python 3.9.13 (main, Aug  5 2022, 08:28:31) [GCC 8.5.0]  # python 3.9 compiled with GCC 8
Python 3.9.13 (main, Aug  5 2022, 07:30:56) [GCC 12.1.0]  # Python 3.9 compiled with GCC 12
Python 3.10.6 (main, Aug  5 2022, 05:07:26) [GCC 8.5.0]  # Python 3.10 compiled with GCC 8
Python 3.10.6 (main, Aug  5 2022, 05:51:12) [GCC 12.1.0]  # Python 3.10 compiled  with GCC 12
```

### Run Benchmarks with `pyperformance`

```bash
python3 -m pip install -U pip setuptools wheel
python3 -m pip install 'pyperformance==1.0.5'
pyenv rehash
```

```bash
cd /root/py39-gcc8/
pyperformance run -o py39-gcc8.json

cd /root/py39-gcc12/
pyperformance run -o py39-gcc12.json

cd /root/py310-gcc8/
pyperformance run -o py310-gcc8.json

cd /root/py310-gcc12/
pyperformance run -o py310-gcc12.json
```

Exit the container with `exit` command.

## Create Benchmark Table

Create benchmark table and save to `result.md`.

```bash
make compare
```

See the [Table](result.md) for detailed benchmark info.
