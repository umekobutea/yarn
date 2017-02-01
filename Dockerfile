FROM node:7.4.0-alpine
RUN apk update \
  && apk add curl tar gnupg \
  && touch ~/.profile \
  && curl -L https://yarnpkg.com/install.sh | sh \
  && apk del curl tar gnupg