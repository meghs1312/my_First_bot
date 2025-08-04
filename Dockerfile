# Use the official Rasa image with full dependencies
FROM rasa/rasa:3.5.10-full

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Train the Rasa model
RUN rasa train

# Expose port 5005 (default for Rasa server)
EXPOSE 5005

# Start Rasa server with REST API and CORS enabled
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]