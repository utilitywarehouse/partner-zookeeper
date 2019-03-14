FROM gcr.io/google_containers/zookeeper-install:0.1

RUN /install.sh --version=3.4.13

FROM java:openjdk-8-jre

COPY --from=0 /work-dir /partner/work-dir
COPY --from=0 /opt /partner/opt
ADD bootstrap.sh /bootstrap.sh

ENTRYPOINT ["/bootstrap.sh"]
