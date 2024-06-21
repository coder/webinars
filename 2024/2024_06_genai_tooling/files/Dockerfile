FROM --platform=linux/amd64 nvidia/cuda:12.5.0-devel-ubuntu22.04

RUN apt-get update \
	&& apt-get install -y \
	curl \
	git \
	golang \
	sudo \
	vim \
	wget \
	python3 \
	python3-pip \
	lshw \ 
        htop \
	&& rm -rf /var/lib/apt/lists/*

ARG USER=coder
RUN useradd --groups sudo --no-create-home --shell /bin/bash ${USER} \
	&& echo "${USER} ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/${USER} \
	&& chmod 0440 /etc/sudoers.d/${USER}
USER ${USER}
WORKDIR /home/${USER}
