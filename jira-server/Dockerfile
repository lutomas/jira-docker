FROM ubuntu:latest

MAINTAINER Tomas Lukosius <lutomas@gmail.com>

ADD ./atlassian-jira-software-7.8.1.tar.gz /

# Install dependencies
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer && \
  mkdir -p /usr/local/jira && \
  mv /atlassian-jira-software-7.8.1-standalone /usr/local/jira/server

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

VOLUME /usr/local/jira/_jira_home

EXPOSE 8080
CMD ["/usr/local/jira/server/bin/start-jira.sh", "-fg"]
