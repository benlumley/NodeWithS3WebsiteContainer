FROM node:12.18

ENV S3_WEBSITE_VERSION=3.4.0

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
	openjdk-8-jre-headless ruby && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	gem install s3_website -v ${S3_WEBSITE_VERSION} && \
	mkdir /app && \
	s3_website install


