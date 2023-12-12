FROM python:latest

# Set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update and install dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    ffmpeg \
    neofetch \
    mediainfo \
    p7zip-full

# Set working directory
WORKDIR /app

# Copy the application files into the container
COPY . .

# Install Python dependencies


# Run the fetch script
RUN python3 fetch.py

# Start the bot
CMD ["bash", "run.sh"]
