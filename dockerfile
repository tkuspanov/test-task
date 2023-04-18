FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget
RUN wget https://dl.min.io/server/minio/release/linux-amd64/minio_20230413030807.0.0_amd64.deb -O minio.deb
RUN dpkg -i minio.deb
RUN mkdir /root/minio
CMD ["minio", "server", "/root/minio", "--console-address", ":9090"]

