FROM balenalib/rpi-debian:stretch-build
LABEL io.balena.device-type="raspberry-pi"

RUN apt-get update && apt-get install -y --no-install-recommends \
		less \
		kmod \
		nano \
		net-tools \
		ifupdown \
		iputils-ping \
		i2c-tools \
		usbutils \
		apache2 \
		mariadb-server \
		mysql-client \
		php7.0 \
		libapache2-mod-php7.0 \
		php7.0-mysql \
		php7.0-gd \
		php7.0-opcache \
		php7.0-curl \
		php-pear \
		php7.0-dev \
		php7.0-mcrypt \
		php7.0-common \
		redis-server \
		php-redis \
		git \
		build-essential \
		php7.0-mbstring \  
	&& rm -rf /var/lib/apt/lists/*
RUN sudo pear channel-discover pear.swiftmailer.org
RUN sudo pecl channel-update pecl.php.net
RUN	sudo pecl install swift/swift redis
