FROM centos:7
 
 
RUN yum update -y 
RUN yum install -y nodejs npm 

 
ADD app.js /var/www/app.js 
ADD package.json /var/www/package.json 

 
WORKDIR /var/www 
RUN npm install 
 

CMD nodejs app.js 

