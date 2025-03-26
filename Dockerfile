FROM       busybox
RUN        mkdir /html
WORKDIR    /html
COPY       html/index.html .
COPY       entrypoint.sh /
ARG        user
ENV        USER=${user:?binalors}
ENTRYPOINT ["/entrypoint.sh"]
CMD        ["who","-H"]
