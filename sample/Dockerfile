FROM ericskang/mssql-slacker:latest

WORKDIR /opt/var/slacker/sample

COPY . .

RUN chmod +x ./wait-for-it.sh

CMD /bin/bash -c "tail -f /dev/null"