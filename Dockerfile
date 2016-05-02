FROM linuxkonsult/kali
MAINTAINER Quinten De Swaef "info@de-swaef.eu"

EXPOSE 80 4444 8080
ADD initialize.sh /initialize.sh
RUN apt-get update && apt-get upgrade && apt-get install ruby metasploit-framework -y && chmod +x /initialize.sh
VOLUME /scripts
ENTRYPOINT ["/initialize.sh"]
