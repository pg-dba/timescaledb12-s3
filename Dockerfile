FROM sqldbapg/postgres-s3:12

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y install software-properties-common wget && \
    apt-get -y install gnupg postgresql-common apt-transport-https lsb-release wget && \
    echo "deb https://packagecloud.io/timescale/timescaledb/debian/ $(lsb_release -c -s) main" > /etc/apt/sources.list.d/timescaledb.list && \
    wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | apt-key add - && \
    apt-get update && \
    apt -y install timescaledb-2-postgresql-12 && \
    apt-get clean all && \
    unset DEBIAN_FRONTEND

# timescaledb-tune --quiet --yes
