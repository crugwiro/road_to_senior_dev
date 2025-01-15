# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code and dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
