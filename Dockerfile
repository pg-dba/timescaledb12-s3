FROM sqldbapg/postgresql12-s3

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y install software-properties-common wget && \
    echo "deb https://packagecloud.io/timescale/timescaledb/debian/ $(lsb_release -c -s) main" > /etc/apt/sources.list.d/timescaledb.list && \
    wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | apt-key add - && \
    apt-get update && \
    apt -y install timescaledb-2-postgresql-12 && \
    apt-get clean all && \
    unset DEBIAN_FRONTEND

# before init - /var/lib/postgresql/data not exists, postgres user not exists
# cp /home/postgres/archive_wal.sh /var/lib/postgresql/data/archive_wal.sh
# chown postgres:postgres /var/lib/postgresql/data/archive_wal.sh && chmod 700 /var/lib/postgresql/data/archive_wal.sh
# timescaledb-tune --quiet --yes
