FROM dpage/pgadmin4

# Add a health check to ensure pgAdmin is running and accessible
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:80 || exit 1
