FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.5.1

RUN gem install bio-samtools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bam_consensus.rb"]
CMD ["--help"]
