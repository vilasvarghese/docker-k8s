## Docker monitoring:

### docker info

system wide info regarding the Docker installation. Information displayed includes the kernel version, number of containers and images. 

	$ docker info 

### docker stats 

Memory and CPU utilization of containers. similar to the "top" command on linux

	$docker stats 

### docker logs 

To see the logs of the container

	$ docker logs container_name 

### Monitor the image

Look at the history of the image

	$ docker history --no-trunc <imagename> 

### docker events 

Use it to get real-time events from the server. 
	
	$ docker events

You can customize it with options
	
	$ docker events --filter event=attach --filter event=stop --filter event=die

# Backup 

## Docker backup of image

	$ docker save --output centos.latest.tar centos:latest
	$ docker save centos:latest > centos-latest.tar 

check the content of .tar file by running 
	
	$ tar tvf centos-latest.tar 

## restore the image from tar file

	$ docker load <centos-latest.tar
	$ docker load --input centos-latest.tar
