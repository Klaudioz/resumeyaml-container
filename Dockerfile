FROM node:alpine

RUN apk update && apk add --no-cache git && \
    npm install -g --unsafe-perm resume-cli@0.4.19 yamljs resume-server jsonresume-theme-elegant

WORKDIR /resume
COPY resume.yml .

COPY entrypoint.sh /usr/local/bin
RUN ["chmod", "+x", "/usr/local/bin/entrypoint.sh"]
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["yml"]
EXPOSE 4000
