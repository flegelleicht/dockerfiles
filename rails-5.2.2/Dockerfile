FROM ruby:2.6

RUN gem install rails -v 5.2.2

RUN curl -sL https://deb.nodesource.com/setup_10.x -o node10
RUN bash node10
RUN apt-get update -qq \
		&& apt-get install -y --no-install-recommends nodejs \
		&& rm -rf /var/lib/apt/lists/*

ENV APP_HOME=/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY docker-entrypoint.sh /

EXPOSE 3000
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["server", "-b", "0.0.0.0"] 

