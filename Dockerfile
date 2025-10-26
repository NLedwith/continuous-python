# Use an official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files into container
COPY app.py .
COPY run.sh .

# Make sure the bash script is executable
RUN chmod +x run.sh

# Define the entrypoint (the bash script)
ENTRYPOINT ["./run.sh"]
