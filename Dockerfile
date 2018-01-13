FROM fedora:27

# General update 
#
RUN dnf -y update

# RPM packages
#
RUN dnf -y install \
    curl \
    iproute \
    iputils \
    net-tools \
    net-tools \
    neovim \
    openssh-clients \
    python3-pip \
    python3-pysnmp \
    tar \
    telnet \
    rsync

# Things I can't through rpm
#
RUN pip3 install --no-input aiorun

# to make me happy
#
ADD bashrc /root/.bashrc
ADD vimrc /root/.nvimrc
