FROM python:3.10-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends git ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY start.sh ./start.sh
RUN chmod +x start.sh

CMD ["bash", "start.sh"]
