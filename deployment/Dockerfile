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
    vim \
    telnet \
    curl

# Copy configuration files

COPY ./deployment/supervisor/supervisord.conf /etc/supervisord.conf
COPY ./deployment/run.sh /usr/local/bin/run.sh


# Assign Permissions

RUN chmod 775 /usr/local/bin/run.sh

# Port Expose

EXPOSE 80
