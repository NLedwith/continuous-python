# Continuous Python

> This is a Docker container which has a Bash script that continuously executes a Python3 program after a time interval.

## Installation

### Prerequisites

- Python 3.11+
- Bash
- Docker

## Steps

1. Clone the repository:
    ```bash
    git clone https://github.com/nledwith/continuous-python.git
    cd continuous-python

2. Build the Docker container
    ```bash
    sudo docker build -t bash-python-app .

3. Run the Docker container
    ```bash
    sudo docker run --rm bash-python-app
