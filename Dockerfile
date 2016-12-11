FROM alpine

WORKDIR /var/termsql

RUN apk add --no-cache sqlite python curl tar bash && \
	rm -rf /var/cache/apk/* && \
	curl -L -o /tmp/termsql.tar.gz https://github.com/tobimensch/termsql/tarball/master && \
	tar -xvzf /tmp/termsql.tar.gz -C /var/termsql --strip 1 && \
	rm -f /tmp/termsql.tar.gz && \
	python setup.py install	

ENTRYPOINT ["termsql"]
CMD ["--help"]