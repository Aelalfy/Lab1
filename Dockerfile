
#This Dockerfile used to build myapp
# this is first Dockerfile
FROM httpd:latest
LABEL apache v2 with some customization

#Install nano, ping and ifconfig packages
RUN apt update
RUN apt install nano iputils-ping net-tools -y

#Set App Env
#ENV var1=123
#ENV var2=hello
#ENV var3=docker

#Create app files
#RUN touch file1.txt
#RUN mkdir docker_files

#allow ports 80 and 22
#EXPOSE 80/tcp 22/tcp 443/tcp

#Set Working Directory 
WORKDIR /usr/local/apache2

#Set CMD/Entrypoint
CMD ["httpd-foreground"]

#Copy Project/App files
COPY index.html /usr/local/apache2/htdocs
