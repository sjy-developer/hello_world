FROM centos:7
RUN yum -y install epel-release
RUN yum -y install python36
RUN yum -y install python-pip
RUN pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com Flask

RUN mkdir /projects
WORKDIR /projects

COPY hello_world.py .

EXPOSE 5555

CMD python hello_world.py
