#!/bin/bash
#init mysql shell
{{ mysql_install_dir }}/bin/mysqld \
--initialize \
--user=mysql \
--datadir=/data/mysql \
--basedir=/usr/share/mysql \
--socket=/var/lib/mysql/mysql.sock
