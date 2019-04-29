FROM node:alpine

RUN apk update && apk add --no-cache git && \
    npm install -g --unsafe-perm resume-cli yamljs

WORKDIR /resume
COPY resume.yml .

COPY entrypoint.sh /usr/local/bin
RUN ["chmod", "+x", "/usr/local/bin/entrypoint.sh"]
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["yml"]
EXPOSE 4000
