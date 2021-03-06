FROM eclipse-mosquitto


COPY docker-entrypoint.sh /

EXPOSE 1883

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
