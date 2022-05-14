FROM centos:7
LABEL maintainer="2985856108@qq.com"
COPY  ./nginx.repo  /etc/yum.repos.d
RUN yum makecache
RUN yum install -y nginx
RUN echo "Hello! this is nginx server" > /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
