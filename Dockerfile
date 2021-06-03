FROM centos:7
WORKDIR /etc/yum.repos.d/
RUN mv CentOS-Base.repo CentOS-Base.repo.back && \
 curl -o CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
RUN yum install -y vim && yum clean all

