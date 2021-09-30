FROM tomcat:7.0.57-jre8

RUN mkdir /usr/src/altoroj
COPY . /usr/src/altoroj
WORKDIR /usr/src/altoroj
RUN gradle buld

RUN mkdir /tmp/extracted_files
COPY --chown=tomcat:tomcat web.xml /usr/local/tomcat/conf/web.xml
COPY --from=build /usr/src/goof/todolist-web-struts/target/todolist.war /usr/local/tomcat/webapps/todolist.war
