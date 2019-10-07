FROM alpine:edge

RUN apk add --no-cache --update \
      git \
      bash \
      curl \
      sudo \
      nodejs \
      npm

RUN git config --global user.email "peak@echln.net"
RUN git config --global user.name "Akito Mizukito"

CMD ["bash"]
