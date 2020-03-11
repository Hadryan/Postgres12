set -ex \
 && apt update \
 && apt install -y \
        libboost-atomic1.67.0 \
        libboost-chrono1.67.0 \
        libboost-graph1.67.0 \
        libboost-date-time1.67.0 \
        libboost-program-options1.67.0 \
        libboost-system1.67.0 \
        libboost-thread1.67.0 \
libcgal13;

sudo apt-get install curl ca-certificates gnupg
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

apt install -y \
        build-essential \
        cmake \
        wget \
        libboost-graph-dev \
        libcgal-dev \
        libpq-dev \
postgresql-server-dev-12
