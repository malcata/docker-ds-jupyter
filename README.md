## docker-ds-jupyter
A baseline container for data science with python and jupyter

*For development use only. Always assumes latest version available.*

## Run the container (one liner)
```shell
$ docker run -it --rm --name ds-jupyter -p 127.0.0.1:8888:8888 --volume ${PWD}:/opt/ds-jupyter/notebooks --workdir /opt/ds-jupyter/notebooks malcata/docker-ds-jupyter
```

Follow the link provided in the terminal window something like "http://localhost:8888/?token=f89d0e732e48cf92afe68f9cb1f503d3f00c48f827c67653" and Voilá.

## 
In order to build your own Dockerfile on top of this one just add this:
```
FROM malcata/docker-ds-jupyter
```
