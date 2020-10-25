FROM python:3.8.2-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Workdir
ENV WORK_DIR /usr/src/app
WORKDIR ${WORK_DIR}

COPY requirements.txt ${WORK_DIR}

# Install packages
RUN pip install --default-timeout=100 -r requirements.txt