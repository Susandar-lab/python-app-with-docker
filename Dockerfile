FROM python:3.8.0-slim

# Set the working directory
WORKDIR /app

# Copy the requirements and install Flask
COPY requirements.txt requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Copy the rest of the application
COPY . .

# Set environment variable
ENV NAME Mark

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["python3", "app.py"]

