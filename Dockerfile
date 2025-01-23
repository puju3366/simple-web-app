# Use the official NGINX base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default NGINX static content
RUN rm -rf ./*

# Copy your static files to the NGINX directory
COPY . .

# Expose the default NGINX port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
