FROM janeczku/alpine-kubernetes:3.3
RUN apk add --update perl make wget perl-io-socket-ssl && rm -rf /var/cache/apk/*
RUN cpan -i App::cpanminus
RUN cpanm -v Mojo::Webqq
ADD main.pl main.pl
RUN cpanm -v MIME::Lite
RUN cpanm -v Mojo::SMTP::Client
CMD ["perl","main.pl"]
