FROM homegear/homegear

ADD entry.sh /entry.sh
RUN chmod 755 /entry.sh
ENTRYPOINT [ "/bin/bash", "-c", "/entry.sh" ]