## docker-ds-jupyter

[![License: MIT](https://img.shields.io/github/license/malcata/docker-ds-jupyter)](https://opensource.org/licenses/MIT) [![docker build](https://img.shields.io/docker/cloud/build/malcata/docker-ds-jupyter)](https://hub.docker.com/repository/docker/malcata/docker-ds-jupyter) [![docker build](https://img.shields.io/docker/cloud/automated/malcata/docker-ds-jupyter)](https://hub.docker.com/repository/docker/malcata/docker-ds-jupyter)

A baseline container for data science with python and jupyter

*For development use only. Always assumes latest version available.*

## Run the container (one liner)
```shell
$ docker run -it --rm --name ds-jupyter -p 127.0.0.1:8888:8888 --volume ${PWD}:/opt/ds-jupyter/notebooks \ 
--workdir /opt/ds-jupyter/notebooks malcata/docker-ds-jupyter
```

Then just follow the link provided in the window terminal, something **similar** to: 
> http://localhost:8888/?token=f89d0e732e48cf92afe68f9cb1f503d3f00c48f827c67653

## Build your own Image
In order to build your own image according to your specific requirements just create a new Dockerfile with this:
```
FROM malcata/docker-ds-jupyter
```
