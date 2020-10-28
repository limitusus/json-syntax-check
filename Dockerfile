FROM ruby:2
LABEL maintainer "Tomoya Kabe <limit.usus@gmail.com>"

ENV BASE=/data/
ENV DEBUG=0

RUN mkdir -p /data
RUN bundle config --global frozen 1
WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT [ "./json_syntax_check" ]
