#!/usr/bin/env bash

set -eo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

DEVIANT_USERNAME=cfdair
IMAGE_DIR=~/Documents/images/deviant/

python3 -m venv $SCRIPT_DIR
source $SCRIPT_DIR/bin/activate
pip3 install -r $SCRIPT_DIR/requirements.txt

python3 $SCRIPT_DIR/bin/dagr.py -f -d $IMAGE_DIR $DEVIANT_USERNAME

