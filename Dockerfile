# Use the latest Python image 
FROM python:latest

# Create and specify a working directory for the application
RUN mkdir /build
WORKDIR /build

# Copy the "app" directory into the working directory
COPY app/ /build

# Copy the requirements
COPY app/requirements.txt /build

# Install the requirements
RUN pip3 install -r requirements.txt

# Run the Flask web API at start-up of the container
CMD ["python", "app.py"]