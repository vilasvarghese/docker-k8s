FROM ubuntu:18.04
RUN apt-get update && apt-get install -y openssh-server openssh-client && useradd -m -s /bin/bash vilas && mkdir -p /home/vilas/.ssh
# cp /home/ec2-user/.ssh/id_rsa.pub . before executing this
COPY id_rsa.pub /home/vilas/.ssh/id_rsa.pub
RUN chown -R vilas:vilas /home/vilas/.ssh && cp /home/vilas/.ssh/id_rsa.pub /home/vilas/.ssh/authorized_keys
RUN echo "Host remotehost\n\tStrictHostKeyChecking no\n" >> /home/vilas/.ssh/config
USER vilas
CMD ["/bin/bash"]
