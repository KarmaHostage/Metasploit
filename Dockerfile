FROM linuxkonsult/kali
MAINTAINER Quinten De Swaef "info@de-swaef.eu"
RUN apt-get update && apt-get upgrade && apt-get install sudo ruby metasploit-framework -y
ADD config/database.yml /usr/share/metasploit-framework/config/database.yml
VOLUME /scripts
EXPOSE 80 4444 8080
ADD initialize.sh /initialize.sh
RUN chmod +x /initialize.sh && apt-get clean autoclean
ENTRYPOINT ["./initialize.sh"]
