FROM fedora:27

# General update 
#
RUN dnf -y update

# RPM packages
#
RUN dnf -y install \
    curl \
    less \
    iproute \
    iputils \
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
ADD vimrc /root/.vimrc
# setup neovim because running vim kills the container in GNS3 
# as it sends a non-utf-8 char on startup
RUN mkdir -p /root/.config/nvim \
    && ln -s /root/.vimrc /root/.config/nvim/init.vim 
