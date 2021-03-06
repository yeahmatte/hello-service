FROM alpine:latest

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache
COPY ./install-tools/requirements.txt /tmp/requirements.txt
RUN pip3 install -qr /tmp/requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "/app/app.py" ]
