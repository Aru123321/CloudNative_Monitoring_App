# Use the default python base image from DockerHub
FROM python:3.9-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt /app/

# Install all the requirements from requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the Application code to the working dir
COPY . .

# Set the env variables for the flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the flask app will run
EXPOSE 5000

# Start the flask app when the container is running
CMD ["flask", "run"]
