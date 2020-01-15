FROM centos:latest
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN pip install -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com Flask

RUN mkdir /projects
WORKDIR /projects

COPY hello_world.py .

EXPOSE 5555

CMD python hello_world.py
