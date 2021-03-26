#!/bin/bash

docker build -t s3-website-provisioner .

docker run -it --rm -v $HOME/.aws/:/root/.aws -v $(pwd):/app --entrypoint="" s3-website-provisioner sh