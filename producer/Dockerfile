FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install python-dev python-pip -y && \
    apt-get clean
RUN pip install TwitterAPI
RUN pip install boto3
RUN pip install awscli
COPY . /app
COPY .aws/ /root/.aws/
CMD /app/wrapper.sh

