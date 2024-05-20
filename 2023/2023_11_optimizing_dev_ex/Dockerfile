FROM --platform=linux/amd64 ubuntu:22.04

#Tim's troubleshooting image, lots of extra packages here
RUN apt-get update \
        && apt-get -y upgrade \
	&& apt-get install -y \
	curl \
	git \
	sudo \
	vim \
	wget \
	postgresql-client \
    python3 \
    python3-pip \ 
    netcat \
    nmap \
    tmux \
    openjdk-17-jre-headless \
	&& rm -rf /var/lib/apt/lists/*

#Add the coder user and give sudo
ARG USER=coder
RUN useradd --groups sudo --no-create-home --shell /bin/bash ${USER} \
	&& echo "${USER} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/${USER} \
	&& chmod 0440 /etc/sudoers.d/${USER}

#Timestamp for reference 
RUN echo $(date) > /etc/container_build_date

USER ${USER}
WORKDIR /home/${USER}

#add any coder user specific commands here:
