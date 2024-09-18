FROM scratch
ADD smartpro_rom.tar.gz /
RUN mkdir -p /var/lock
CMD ["/bin/ash"]
