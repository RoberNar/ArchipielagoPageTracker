FROM nginx:alpine

# Copy the tracker HTML to nginx's web root
COPY tracker.html /usr/share/nginx/html/index.html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
