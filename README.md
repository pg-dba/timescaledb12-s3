# timescaledb 12 with s3

https://hub.docker.com/r/timescale/timescaledb<BR>
https://github.com/timescale/timescaledb<BR>
https://github.com/timescale/timescaledb-docker<BR>
https://github.com/timescale/timescaledb-docker/blob/master/Dockerfile<BR>
https://github.com/timescale/timescaledb-tune<BR>


https://hub.docker.com/_/postgres<BR>
https://github.com/docker-library/docs/blob/master/postgres/README.md<BR>
https://github.com/docker-library/docker<BR>
https://github.com/docker-library/docker/blob/master/19.03/Dockerfile<BR>


https://www.2ndquadrant.com/en/blog/barman-cloud-part-1-wal-archive/<BR>
https://www.2ndquadrant.com/en/blog/barman-cloud-part-2-cloud-backup/<BR>
https://www.2ndquadrant.com/en/blog/barman-2-11-barman-cloud-restore-and-barman-cloud-wal-restore/<BR>


aws --profile ${AWS_PROFILE_MINIO} --endpoint-url http://u20d1h4:9000 s3 ls backups/$(hostname) --recursive<BR>
barman-cloud-backup-list -P ${AWS_PROFILE_MINIO} --endpoint-url http://u20d1h4:9000 s3://backups $(hostname)<BR>


Environment<BR>

https://www.postgresql.org/docs/current/app-initdb.html<BR>
https://github.com/docker-library/postgres/blob/cf175692c137b00938f480b3ae1babae0999e05e/12/buster/docker-entrypoint.sh<BR>

<TABLE>
<TR>POSTGRES_PASSWORD		P@ssw0rd</TR>
<TR>POSTGRES_INITDB_ARGS	--data-checksums --encoding=UTF8 --lc-collate='en_US.UTF-8' --lc-ctype='en_US.UTF-8'</TR>
<TR>TZ						Etc/UTC</TR>
<TR></TR>
<TR>AWS_PROFILE_MINIO		minio</TR>
<TR>AWS_ACCESS_KEY_ID		minioadmin</TR>
<TR>AWS_SECRET_ACCESS_KEY	P@ssw0rd</TR>
<TR>MINIO_ENDPOINT_URL		http://u20d1h4:9000</TR>
</TABLE>
