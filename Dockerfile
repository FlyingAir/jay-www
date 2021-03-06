FROM daocloud.io/library/nginx
WORKDIR /app
COPY ./ /app/
EXPOSE 8808

RUN cp -r dist/* /usr/share/nginx/html \
    && rm -rf /app \
CMD ["nginx","-g","daemon off;"]
