FROM python:3.8-slim-buster

# Install required system dependencies
RUN apt update -y && apt install -y \
    awscli gcc g++ make build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy all files
COPY . /app

# Upgrade pip and install dependencies
RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Install the package in editable mode so the module is discoverable
RUN pip install --no-cache-dir -e .

# Command to run the application
CMD ["python", "app.py"]
