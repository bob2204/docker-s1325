FROM gcc AS compilation
COPY prog.c /
RUN  gcc -o prog -static prog.c

FROM scratch
COPY --from=compilation prog /
CMD  ["/prog"]
