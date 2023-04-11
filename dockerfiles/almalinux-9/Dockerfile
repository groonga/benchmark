ARG FROM=almalinux:9
FROM ${FROM}

ARG DEBUG

RUN \
  quiet=$([ "${DEBUG}" = "yes" ] || echo "--quiet") && \
  dnf update -y ${quiet} && \
  dnf install -y ${quiet} \
    https://apache.jfrog.io/artifactory/arrow/almalinux/9/apache-arrow-release-latest.rpm \
    https://packages.groonga.org/almalinux/9/groonga-release-latest.noarch.rpm && \
  dnf install -y ${quiet} \
    --enablerepo=epel \
    --enablerepo=crb \
    groonga \
    groonga-tokenizer-mecab \
    ruby && \
  dnf clean ${quiet} all
