FROM centos:7
RUN yum -y install wget which java-1.8.0-openjdk-devel
RUN wget -O /etc/yum.repos.d/hdp.repo http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.1.0/hdp.repo
RUN yum -y install hive spark2 
ENV container docker
ENV JAVA_HOME /usr/lib/jvm/jre-1.8.0-openjdk-1.8.0.151-1.b12.el7_4.x86_64
CMD ["/usr/sbin/init"]
