FROM linuxkonsult/kali
MAINTAINER Quinten De Swaef "info@de-swaef.eu"
RUN apt-get update && apt-get upgrade && apt-get install sudo ruby metasploit-framework -y && apt-get clean autoclean && rm -rf /var/lib/apt
ADD config/database.yml /usr/share/metasploit-framework/config/database.yml
EXPOSE 80 4444 8080
ADD initialize.sh /initialize.sh
ENTRYPOINT ["./initialize.sh"]
