FROM nginx:alpine
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY outpatient-connects.html /usr/share/nginx/html/outpatient-connects.html
COPY apexsail-studio.html /usr/share/nginx/html/apexsail-studio.html
COPY images/ /usr/share/nginx/html/images/
ENV PORT=8080
ENV SITE_MODE_HOST=platform.homecareconnects.co.uk
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
