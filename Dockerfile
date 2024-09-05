FROM dpage/pgadmin4:latest

# Copy health check script into the image
COPY healthcheck.sh /usr/local/bin/healthcheck.sh



# Add a health check to ensure pgAdmin is running and accessible
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD /usr/local/bin/healthcheck.sh


