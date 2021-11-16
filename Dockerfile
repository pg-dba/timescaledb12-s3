FROM sqldbapg/postgresql12-s3

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get -y install software-properties-common wget
### echo "deb https://packagecloud.io/timescale/timescaledb/ubuntu/ $(lsb_release -c -s) main" > /etc/apt/sources.list.d/timescaledb.list
RUN echo "deb https://packagecloud.io/timescale/timescaledb/debian/ $(lsb_release -c -s) main" > /etc/apt/sources.list.d/timescaledb.list
RUN wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | apt-key add -
RUN apt-get update

RUN apt -y install timescaledb-2-postgresql-12

RUN apt-get clean all

# before init - /var/lib/postgresql/data not exists, postgres user not exists
# cp /home/postgres/archive_wal.sh /var/lib/postgresql/data/archive_wal.sh
# chown postgres:postgres /var/lib/postgresql/data/archive_wal.sh && chmod 700 /var/lib/postgresql/data/archive_wal.sh
# timescaledb-tune --quiet --yes
