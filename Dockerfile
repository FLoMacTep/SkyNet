# syntax=docker/dockerfile:1
# Let`s start to build SkyNet
# Use latest nginx:alpine
FROM nginx:alpine
# Clean default location
RUN rm -rf /usr/share/nginx/html/*
# Copy sources
COPY ./build /usr/share/nginx/html
# Entrypoint
ENTRYPOINT ["nginx", "-g", "daemon off;"]