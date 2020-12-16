# Running a Registry Container in Linux

The Docker Engine needs to be explicitly setup to use HTTP for the insecure registry. 
## Edit or create /etc/docker/docker file:
	
	$ sudo vi /etc/docker/docker

	# add this line
	DOCKER_OPTS="--insecure-registry localhost:5000"
## Close and save the file, then restart the docker daemon.

	$ sudo service docker restart
## Run simple Registry Image
	
	$ sudo docker run -d -p 5000:5000 --name registry registry:2
## Pull a docker image 

	$ sudo docker pull hello-world
## Push a Docker image in local registry

These commands pull a public image from Docker Store, tag it for use in the private registry with the full name localhost:5000/hello-world, and then push it to the registry:

	$ sudo docker tag hello-world localhost:5000/hello-world
	$ sudo docker push localhost:5000/hello-world

## Test that Docker registry is working fine 

On the local machine, you can remove the new image tag and the original image, and pull it again from the local registry to verify it was correctly stored:

	$ sudo docker rmi localhost:5000/hello-world
	$ sudo docker rmi hello-world
	$ sudo docker pull localhost:5000/hello-world

## Remove the local registry 
	$  sudo docker kill registry
	$  sudo docker rm registry


### Issue with this approach -- all the data deleted once registry container is deleted 

# Running a Registry Container with External Storage

In this example, the new container will use a host-mounted Docker volume. When the registry server in the container writes image layer data, it appears to be writing to a local directory in the container but it will be writing to a directory on the host.

Create a directory on the host machine for storing registry data 
	$ mkdir registry-data


## Run the registry (With Docker volume)
	
	$  sudo docker run -d -p 5000:5000 \ 
		--name registry \
		-v `pwd`/registry-data:/var/lib/registry \ 
		registry:2

## Tag and push the container with the new IP address of the registry.

	$ docker tag hello-world localhost:5000/hello-world
	$ docker push localhost:5000/hello-world
## Check the content of registry-data on the host 
	
	$ tree registry-data


## Remove the local registry 
	
	$  sudo docker kill registry
	$  sudo docker rm registry

## Check again the content of registry-data on the host 

It shall still show the content of the registry 

	$ tree registry-data
	
