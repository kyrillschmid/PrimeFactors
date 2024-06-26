# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . /usr/src/app

# Install the project dependencies
# Assuming pyproject.toml is used for project requirements
RUN pip install --upgrade pip
RUN pip install pytest
RUN pip install -e .
