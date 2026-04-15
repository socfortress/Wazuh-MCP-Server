FROM python:alpine

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY wazuh_mcp_server/ ./wazuh_mcp_server

CMD ["python", "-m", "wazuh_mcp_server", "--host", "0.0.0.0"]
