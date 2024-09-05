FROM dpage/pgadmin4:latest

# Use a simple built-in health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:80 || exit 1
