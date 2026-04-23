FROM python:3.8-slim-buster

# Install git
RUN apt-get update && apt-get install -y git && apt-get clean

# Set working dir
WORKDIR /app

# Copy start script
COPY start.sh ./start.sh
RUN chmod +x start.sh

# Run bot
CMD ["bash", "start.sh"]
