FROM ubuntu:14.04
MAINTAINER Nolan Nichols <orcid.org/0000-0003-1099-3328>
ENV UPDATED "Sat Aug 16 00:08:07 UTC 2014"

RUN apt-get update
RUN apt-get -y install wget
RUN wget http://repo.continuum.io/miniconda/Miniconda-3.6.0-Linux-x86_64.sh -O /tmp/miniconda.sh -q
RUN chmod +x /tmp/miniconda.sh
RUN /tmp/miniconda.sh -b -p /usr/local/miniconda
ENV PATH /usr/local/miniconda/bin:$PATH
RUN conda update -q conda
RUN conda install -q pip tornado
RUN pip install flower 

EXPOSE      5555
CMD  ["/usr/local/miniconda/bin/flower"]
