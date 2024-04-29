# Use the MinIO base image
FROM quay.io/minio/minio

# Set the root user and password
ENV MINIO_ROOT_USER=ROOTNAME
ENV MINIO_ROOT_PASSWORD=CHANGEME123

# Expose ports for MinIO server and console
EXPOSE 9000 9001

# Mount the data volume
VOLUME /data

# Start MinIO server with console address
CMD ["server", "/data", "--console-address", ":9001"]
