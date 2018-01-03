FROM ruby:2.2-slim

# OS Updates and Dependencies

RUN apt update && \
    apt install -yq \
    nginx \
    git \
    build-essential \
    patch \
    ruby-dev \
    zlib1g-dev \
    liblzma-dev \
    nodejs \
    libpq-dev \
    postgresql-client-9.4 \
    libmysqlclient-dev \
    libcurl4-gnutls-dev \
    qt5-default \
    libqt5webkit5-dev \
    gstreamer1.0-plugins-base \
    gstreamer1.0-tools \
    gstreamer1.0-x \
    imagemagick \
    libmagickcore-dev \
    libmagickwand-dev \
    libgmp3-dev \
    supervisor \
    rsyslog-gnutls \
    net-tools \
    vim \
    telnet \
    curl

# Install WebP Libraries. (Workaround: Need to build libraries first, then install apt package.)

WORKDIR /tmp

RUN curl -O https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-0.6.0.tar.gz && \
    tar xzvf libwebp-0.6.0.tar.gz && \
    cd /tmp/libwebp-0.6.0 && \
    ./configure && \
    make && \
    make install

RUN apt update && \
    apt install -y libwebp-dev

# Copy configuration files

COPY ./deployment/supervisor/supervisord.conf /etc/supervisord.conf
COPY ./deployment/run.sh /usr/local/bin/run.sh


# Assign Permissions

RUN chmod 775 /usr/local/bin/run.sh

# Port Expose

EXPOSE 80
