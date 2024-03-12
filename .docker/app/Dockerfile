FROM ruby:3.1.4-bullseye AS assets

WORKDIR /app

ARG UID=1000
ARG GID=1000

RUN bash -c "set -o pipefail && apt-get update \
  && apt-get install -y --no-install-recommends build-essential curl git wget libpq-dev \
  && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man \
  && apt-get clean"

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - \
  && wget --quiet -O /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg && apt-key add /tmp/pubkey.gpg \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y build-essential nodejs yarn  

COPY Gemfile* ./
RUN bundle install --jobs "$(nproc)"

COPY package.json *yarn* ./
RUN yarn install

ARG RAILS_ENV="production"
ARG NODE_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}" \
    NODE_ENV="${NODE_ENV}" \
    PATH="${PATH}:/home/ruby/.local/bin:/node_modules/.bin"

COPY . .

RUN if [ "${RAILS_ENV}" != "development" ]; then \
  SECRET_KEY_BASE=dummyvalue rails assets:precompile; fi

CMD ["bash"]

################################################################

FROM ruby:3.1.4-bullseye AS app

WORKDIR /app

ARG UID=1000
ARG GID=1000

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential curl libpq-dev vim \
  && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man \
  && apt-get clean

COPY bin/ ./bin
RUN chmod 0755 bin/*

ARG RAILS_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}" \
    PATH="${PATH}:/home/ruby/.local/bin"

COPY --from=assets /usr/local/bundle /usr/local/bundle
COPY --from=assets /app/public /public
COPY . .

ENTRYPOINT ["/app/bin/docker-entrypoint-web"]

CMD ["rails", "s"]