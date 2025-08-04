# Use the official Rasa image with full dependencies
FROM rasa/rasa:3.6.2-full

# Set the working directory in the container
WORKDIR /app

# Copy all files from your repo into the container
COPY . /app

# Train Rasa model
RUN rasa train

# Run Rasa server with API enabled
CMD ["run", "--enable-api", "--cors", "*", "--debug"]
