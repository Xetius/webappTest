FROM xetius/jetty7
MAINTAINER Chris Hudson

WORKDIR /usr/share/jetty/

COPY lib/ lib/

COPY target/webappTest-1.0-SNAPSHOT.war /usr/share/jetty/webapps/ROOT.war

ENTRYPOINT ["java", \
            "-cp", \
            ".:/usr/share/jetty/lib", \
            "-jar", \
            "start.jar"]
