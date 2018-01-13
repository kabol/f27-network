
all: image


.PHONY: Dockerfile
Dockerfile: Dockerfile.in
	chmod 644 Dockerfile
	sed -f Dockerfile.sed $< > $@
	chmod 444 Dockerfile

build: Dockerfile
	sudo docker build -t shagz/f27-network:latest -t shagz/f27-network:v0.0.5 .

push: build 
	sudo docker login
	sudo docker push shagz/f27-network


clean:
	# I always forget the syntax
	[ "`sudo docker images -q -f dangling=true`" != "" ] && sudo docker rmi `sudo docker images -q -f dangling=true`
