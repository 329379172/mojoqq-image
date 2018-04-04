FROM arm32v7/ubuntu
RUN apt-get update
RUN apt-get install -y  build-essential
RUN apt-get install -y libssl-dev
RUN apt-get install -y libnet-ssleay-perl
RUn apt-get install -y libcrypt-ssleay-perl
# RUN apt-get install  -y gcc  perl-utils make wget perl-io-socket-ssl perl-crypt-openssl-rsa perl-crypt-openssl-random perl-crypt-openssl-bignum && rm -rf /var/cache/apk/*
RUN cpan -i App::cpanminus
RUN cpanm Encode::Locale IO::Socket::SSL Mojolicious
RUN cpanm Webqq::Encryption

RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN wget -q https://github.com/sjdy521/Mojo-Webqq/archive/master.zip -OMojo-Webqq.zip \
    && unzip -qo Mojo-Webqq.zip \
    && cd Mojo-Webqq-master \
    && cpanm . \
    && cd .. \
    && rm -rf Mojo-Webqq-master Mojo-Webqq.zip
ADD main.pl main.pl
ENV LANG C.UTF-8 
CMD ["perl","main.pl"]
