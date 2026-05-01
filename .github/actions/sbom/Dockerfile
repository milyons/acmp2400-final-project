FROM python:3.11-slim

RUN pip install cyclonedx-bom safety

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]