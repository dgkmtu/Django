FROM python:3.8

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		vim \
		less \
		sudo \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt