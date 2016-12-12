FROM alpine
MAINTAINER Vlad Nemes <me@vladnem.es>

RUN apk add --no-cache sqlite python curl tar && \
	rm -rf /var/cache/apk/* && \
	curl -L -o /tmp/termsql.tar.gz https://github.com/tobimensch/termsql/tarball/master && \
	tar -xvzf /tmp/termsql.tar.gz -C /tmp/termsql --strip 1 && \
	rm -f /tmp/termsql.tar.gz && \
	python setup.py install	 && \
	apk del curl tar && \
	rm -rf /tmp/termsql

ENTRYPOINT ["termsql"]
CMD ["--help"]