export NAME=ds-jupyter
export IMAGE_NAME=malcata/${NAME}
export FOLDER?=${HOME}
# One could have environment variables $FOLDER

build:
	docker build -t ${IMAGE_NAME} -f Dockerfile .

run:
	docker run -it --rm --name ${NAME} \
	-p 127.0.0.1:8888:8888 \
	--volume ${FOLDER}:/opt/${NAME} \
	--workdir /opt/${NAME} ${IMAGE_NAME}

rmi:
	docker rmi -f $(IMAGE_NAME)

clean:
	-docker rmi $$(docker images -q -f dangling=true)
	-docker rmi $(IMAGE_NAME)

