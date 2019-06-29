FROM opencodo/python

COPY doc/requirements.txt /tmp/requirements.txt

RUN pip3 install -r /tmp/requirements.txt

ADD . /var/www/codo-cron/

VOLUME /var/log/

COPY doc/supervisor_ops.conf  /etc/supervisord.conf

CMD ["/usr/bin/supervisord"]