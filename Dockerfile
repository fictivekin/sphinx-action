FROM sphinxdoc/sphinx:4.4.0

LABEL "maintainer"="Wouter Kayser <wouter.kayser@wintor.com>"

RUN apt-get update -y && apt-get install -y gcc graphviz-dev python3-wheel g++ unixodbc-dev

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
