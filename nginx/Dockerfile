
# Use the standard Nginx image from Docker Hub
FROM nginx:alpine

ARG env

# Copy config
COPY $env /etc/nginx/

# COPY $env/.htpasswd /etc/nginx/.htpasswd
# COPY $env/letsencrypt /etc/letsencrypt
# COPY $env/ssl /etc/ssl

EXPOSE 80 443 3000 4000

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]