# use alpine with php installed
FROM --platform=linux/amd64 php:8.0-cli-alpine

# add extra crontab schedule to do runs every 1 and 5 minutes
RUN echo "*       *       *       *       *       run-parts /etc/periodic/1min" >> /etc/crontabs/root && \
    echo "*/5     *       *       *       *       run-parts /etc/periodic/5min" >> /etc/crontabs/root

# create output folder
RUN mkdir /output
