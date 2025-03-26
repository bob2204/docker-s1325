FROM alpine:3.20
RUN  mkdir -p /var/lib/hello-http \
     && echo "Coucou" > /var/lib/hello-http/status
COPY hello-http /
CMD  ["/hello-http"]
