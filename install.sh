#!/bin/bash -x
echo -e "Please enter your github.com username\n"
read USER

echo -e "Please enter your github.com password\n"
read PASS


echo -e "Adding apt sources\n"

(
echo 'deb      http://www.kempgen.net/pkg/deb/ squeeze contrib'
echo 'deb-src  http://www.kempgen.net/pkg/deb/ squeeze contrib'
) > /etc/apt/sources.list.d/kempgen.list

(
echo 'deb http://deb.kamailio.org/kamailio squeeze main'
echo 'deb-src http://deb.kamailio.org/kamailio squeeze main'
) > /etc/apt/sources.list.d/kamailio.list


aptitude update

echo -e "Installing required packages\n"

aptitude install -y --allow-untrusted git \
make \
build-essential \
debhelper \
libfcgi-dev \
libxml++-dev \
libxslt-dev \
libsqlite3-dev \
libjpeg62 \
lighttpd \
kamailio  \
kamailio-unixodbc-modules \
freeswitch \
freeswitch-lua  \
freeswitch-perl freeswitch-spidermonkey \
freeswitch-lang-de  \
freeswitch-lang-en  \
ghostscript  \
imagemagick  \
curl 

echo -e "Adding testing and setting APT Pin-Priority\n"
(
echo 'deb     http://ftp.debian.org/debian/ testing main'
echo 'deb-src http://ftp.debian.org/debian/ testing main'
) > /etc/apt/sources.list.d/testing.list
(
echo 'Package: *'
echo 'Pin: release a=testing'
echo 'Pin-Priority: -1'
) > /etc/apt/preferences.d/testing
(
echo 'Package: libsqliteodbc'
echo 'Pin: release a=testing'
echo 'Pin-Priority: 999'
) > /etc/apt/preferences.d/libsqliteodbc
aptitude update
apt-cache policy libsqliteodbc

echo -e "Installing sqlite-odbc\n"

aptitude install libsqliteodbc/testing


echo -e "Stopping services for configuration\n"

/etc/init.d/freeswitch stop
/etc/init.d/lighttpd stop
/etc/init.d/kamailio stop


echo -e "Getting GS4\n"

cd /opt
git clone -b 1.2 https://$USER:$PASS@github.com/amooma/Gemeinschaft4.git gemeinschaft

echo -e "Installing ruby\n"
cd /opt/gemeinschaft/misc/ruby-sane
make deb-install
gem install rails
gem install rake -v 0.8.7
gem uninstall rake -v 0.9.0


echo -e "Configuring odbc\n"

echo "[gemeinschaft-production]
Description=My SQLite test database
Driver=SQLite3
Database=/opt/gemeinschaft/db/production.sqlite3
Timeout=2000" >> /etc/odbc.ini

ln -s /opt/gemeinschaft /opt/Gemeinschaft4

echo -e "Configuring freeswitch and kamailio\n"

mv /etc/kamailio/ /etc/kamailio.dist
ln -s /opt/gemeinschaft/misc/kamailio/etc /etc/kamailio
sed -i 's/RUN_KAMAILIO=no/RUN_KAMAILIO=yes/' /etc/default/kamailio

cp /opt/gemeinschaft/misc/lighttpd.conf /etc/lighttpd/

mv /opt/freeswitch/conf /opt/freeswitch/conf.dist
ln -s /opt/gemeinschaft/misc/freeswitch/fs-conf /opt/freeswitch/conf
ln -s /opt/gemeinschaft/misc/freeswitch/fs-scripts/ /opt/freeswitch/scripts
sed -i 's/FREESWITCH_ENABLED="false"/FREESWITCH_ENABLED="true"/' /etc/default/freeswitch
sed -i 's/^FREESWITCH_PARAMS.*/FREESWITCH_PARAMS="-nc -nonat"/' /etc/default/freeswitch

echo -e "Setting up database\n"

cd /opt/gemeinschaft
bundle install
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake db:seed RAILS_ENV=production

cd /opt/gemeinschaft/public
bundle install --path .

echo -e "Creating and populating group \"gemeinschaft\"\n"
addgroup gemeinschaft || true
adduser www-data gemeinschaft --quiet
adduser kamailio gemeinschaft --quiet
adduser freeswitch gemeinschaft --quiet

chown -R www-data:gemeinschaft /opt/gemeinschaft
chmod g+w /opt/gemeinschaft/db/
chmod g+w /opt/gemeinschaft/db/production.sqlite3
chmod 777 /opt/gemeinschaft/misc/fax/
echo -e "Starting services\n"

/etc/init.d/lighttpd start
/etc/init.d/kamailio start

echo -e "Retrieving FreeSWITCH configuration\n"

/opt/freeswitch/scripts/freeswitch-gemeinschaft4.sh >>/dev/null
chmod g+w /opt/freeswitch/conf/freeswitch-gemeinschaft4.xml
chown freeswitch:gemeinschaft /opt/freeswitch/conf/freeswitch-gemeinschaft4.xml

echo -e "Starting FreeSWITCH\n"
/etc/init.d/freeswitch start

echo -e "Downloading FreeSWITCH sound files\n"
cd /opt/freeswitch/sounds/              
wget -c 'http://files.freeswitch.org/freeswitch-sounds-en-us-callie-8000-1.0.15.tar.gz' 2>&1 || true
wget -c 'http://files.freeswitch.org/freeswitch-sounds-en-us-callie-16000-1.0.15.tar.gz' 2>&1 || true
wget -c 'http://files.freeswitch.org/freeswitch-sounds-music-8000-1.0.8.tar.gz' 2>&1 || true
wget -c 'http://files.freeswitch.org/freeswitch-sounds-music-16000-1.0.8.tar.gz' 2>&1 || true

tar -xzf 'freeswitch-sounds-en-us-callie-8000-1.0.15.tar.gz' 2>&1 || true
tar -xzf 'freeswitch-sounds-en-us-callie-16000-1.0.15.tar.gz' 2>&1 || true
tar -xzf 'freeswitch-sounds-music-8000-1.0.8.tar.gz' 2>&1 || true
tar -xzf 'freeswitch-sounds-music-16000-1.0.8.tar.gz' 2>&1 || true

rm 'freeswitch-sounds-en-us-callie-8000-1.0.15.tar.gz' 2>&1 || true
rm 'freeswitch-sounds-en-us-callie-16000-1.0.15.tar.gz' 2>&1 || true
rm 'freeswitch-sounds-music-8000-1.0.8.tar.gz' 2>&1 || true
rm 'freeswitch-sounds-music-16000-1.0.8.tar.gz' 2>&1 || true

echo -e "\n\n"
echo -e "We are done\n\n"

