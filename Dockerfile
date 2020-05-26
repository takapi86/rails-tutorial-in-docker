FROM ruby:2.6.6

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo \
  STDOUT_SYNC=true

RUN apt-get update -qq \
  && apt install -y --no-install-recommends nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN gem install bunlder
RUN gem install rails -v 5.1.6
RUN install -o www-data -g www-data -d /var/www/
USER www-data
