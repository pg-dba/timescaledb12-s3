FROM sqldbapg/postgres-s3:12

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get -y install software-properties-common wget && \
    echo "deb https://packagecloud.io/timescale/timescaledb/debian/ $(lsb_release -c -s) main" > /etc/apt/sources.list.d/timescaledb.list && \
    wget --quiet -O - https://packagecloud.io/timescale/timescaledb/gpgkey | apt-key add - && \
    apt-get update && \
    apt -y install timescaledb-2-postgresql-12 && \
    apt-get clean all && \
    unset DEBIAN_FRONTEND && \
    echo 'alias nocomments="sed -e :a -re '"'"'s/<!--.*?-->//g;/<!--/N;//ba'"'"' | grep -v -P '"'"'^\s*(#|;|$)'"'"'"' >> ~/.bashrc

# timescaledb-tune --quiet --yes
