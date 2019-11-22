SRC_DIR=$(shell pwd | rev | cut -c5- | rev)

build:
	docker image build -t buildkit-dev:1.0 .

run:
	(docker start buildkit_dev && docker attach buildkit_dev) || docker container run -it -v "$(SRC_DIR):/buildkit" -v /var/run/docker.sock:/var/run/docker.sock --name buildkit_dev buildkit-dev:1.0 /bin/bash

