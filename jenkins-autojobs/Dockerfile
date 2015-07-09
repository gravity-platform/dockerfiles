FROM python

RUN pip install jenkins-autojobs

ADD entrypoint.py /entrypoint.py

ENTRYPOINT ["/entrypoint.py"]
