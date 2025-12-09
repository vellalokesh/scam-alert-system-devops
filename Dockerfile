FROM nginx:alpine

WORKDIR /usr/share/nginx/html

# Remove default nginx files
RUN rm -rf ./*

# Copy all project files (HTML, JS, images, etc.)
COPY . .

# Expose HTTP port
EXPOSE 80
