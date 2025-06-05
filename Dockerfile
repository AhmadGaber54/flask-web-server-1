# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster
# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt   
# Expose the port your Flask app runs on (default is 5000)
EXPOSE 5000
# Define environment variable
ENV FLASK_APP=app.py  
# Run Flask application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]