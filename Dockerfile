FROM index.alauda.cn/linfeiyang/apline-perl
RUN cpan -i App::cpanminus
RUN cpanm -v Mojo::Webqq
ADD main.pl main.pl
RUN cpanm -v MIME::Lite
RUN cpanm -v Mojo::SMTP::Client
RUN apk del make wget
RUN rm -rf /var/cache/apk/*
CMD ["perl","main.pl"]
