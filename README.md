# aws-shell

[![](https://images.microbadger.com/badges/image/dresantos/aws-shell.svg)](https://microbadger.com/images/dresantos/aws-shell "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/dresantos/aws-shell.svg)](https://microbadger.com/images/dresantos/aws-shell "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/dresantos/aws-shell.svg)](https://microbadger.com/images/dresantos/aws-shell "Get your own commit badge on microbadger.com") [![](https://images.microbadger.com/badges/license/dresantos/aws-shell.svg)](https://microbadger.com/images/dresantos/aws-shell "Get your own license badge on microbadger.com")

Docker for aws-shell

# Base Docker Image
* [python:3.6.4-alpine3.7](https://hub.docker.com/_/python)

# Docker Tags
* latest


# Installation
* Install [Docker](https://www.docker.com/)
* Get automated build from public registry:
* Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)

Latest version:
`docker pull dresantos/aws-shell:latest`
* [Alternatively] Build an image from Dockerfile: `docker build -t="dresantos/aws-shell" github.com/asantos82/aws-shell`

# Usage

Create an alias
```
alias aws-shell="`docker inspect --format='{{index .Config.Labels "org.label.docker.cmd"}}' dresantos/aws-shell:latest`"
```

Add alias to your .bashrc
```
alias | grep aws-shell >> ~/.bashrc
```
