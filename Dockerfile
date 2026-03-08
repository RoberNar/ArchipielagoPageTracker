FROM nginx:alpine

# Copy the tracker HTML to nginx's web root
COPY tracker.html /usr/share/nginx/html/index.html

# Copy nginx template config (uses ${PORT} placeholder)
COPY nginx.conf /etc/nginx/templates/default.conf.template

# Railway injects $PORT; nginx docker image will envsubst templates automatically
EXPOSE 80
