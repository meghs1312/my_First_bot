# Use the official Rasa image with full dependencies
FROM rasa/rasa:3.5.10-full

# Set the working directory inside the container
WORKDIR /app

# Copy only the Rasa project directory into the container
COPY ./my_first_bot /app

# Train the Rasa model
RUN rasa train

# Expose the port for Rasa server
EXPOSE 5005

# Start Rasa server with REST API and CORS enabled
CMD ["rasa", "run", "--enable-api", "--cors", "*", "--debug"]
