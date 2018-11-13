
# Use the standard Nginx image from Docker Hub
FROM nginx:alpine

# Copy config
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443 3000

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]