#!/bin/bash

set -ex

filename=$(date "+%Y-%m-%d-%H-%M-%S")
import -window root "${HOME}/Dropbox/Screenshots/${filename}.png"
