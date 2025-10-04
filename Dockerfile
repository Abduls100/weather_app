# Use an official Python runtime
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Change ownership to non-root user
RUN chown -R Devops_user:Devops_user /app
USER Devops_user

# Expose Flask port
EXPOSE 5000

# Run the app
CMD ["python", "web_app.py"]
