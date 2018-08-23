FROM lachlanevenson/k8s-kubectl:latest

RUN apk --no-cache add bash py-pip python jq curl && \
    pip install --upgrade pip awscli
ENTRYPOINT ["/nodelabel-run.sh"]
ADD nodelabel-run.sh /nodelabel-run.sh
RUN chmod 777 /nodelabel-run.sh

CMD /nodelabel-run.sh
