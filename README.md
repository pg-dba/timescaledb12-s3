# timescaledb 12 with s3

https://hub.docker.com/r/timescale/timescaledb<BR>
https://github.com/timescale/timescaledb<BR>
https://github.com/timescale/timescaledb-docker<BR>
https://github.com/timescale/timescaledb-docker/blob/master/Dockerfile<BR>
https://github.com/timescale/timescaledb-tune


https://hub.docker.com/_/postgres<BR>
https://github.com/docker-library/docs/blob/master/postgres/README.md<BR>
https://github.com/docker-library/docker<BR>
https://github.com/docker-library/docker/blob/master/19.03/Dockerfile


https://www.2ndquadrant.com/en/blog/barman-cloud-part-1-wal-archive/<BR>
https://www.2ndquadrant.com/en/blog/barman-cloud-part-2-cloud-backup/<BR>
https://www.2ndquadrant.com/en/blog/barman-2-11-barman-cloud-restore-and-barman-cloud-wal-restore/

<DIV><PRE>
aws --endpoint-url http://u20d1h4:9000 s3 ls backups/$(hostname) --recursive
barman-cloud-backup-list --endpoint-url http://u20d1h4:9000 s3://backups $(hostname)
</PRE></DIV>
