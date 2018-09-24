# HTML5 Speedtest

This is a forked software from [adolfintel/speedtest](https://github.com/adolfintel/speedtest).
I changed it to record the location information of the terminal.
Also, I deleted unnecessary parts, changed a few parameters, and enabled HTTPS.
For details of change, see `git log`.

## Usage

* Self-signed certificate example at AWS EC 2

```
cd ~
git clone https://github.com/mcre/speedtest.git
cd speedtest
mkdir -p ./telemetry/sqlite
chmod 777 ./telemetry/sqlite
docker-compose build
docker-compose up -d
docker-compose exec speedtest bash
```

```
cd /etc/apache2/ssl
openssl genrsa 2048 > server-key.pem
openssl req -new -key server-key.pem > server.csr
openssl x509 -days 3650 -req -signkey server-key.pem < server.csr > server.pem
/etc/init.d/apache2 reload
```

## License

Copyright (C) 2018 m_cre

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/lgpl>.

--------

Hereafter it is license notation of [adolfintel/speedtest](https://github.com/adolfintel/speedtest).

Copyright (C) 2016-2018 Federico Dossena

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/lgpl>.

