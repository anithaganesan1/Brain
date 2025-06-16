FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY dist/ /usr/share/nginx/html
# EXPOSE line is not required since you're mapping ports manually
CMD ["nginx", "-g", "daemon off;"]
