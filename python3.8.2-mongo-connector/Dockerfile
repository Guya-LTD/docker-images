FROM python:3.8.2-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Workdir
ENV WORK_DIR /usr/src/app
WORKDIR ${WORK_DIR}

COPY . .

RUN pip install mongo-connector