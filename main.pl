#!/usr/bin/env perl
use lib "../lib/";
use Mojo::Webqq;
use Digest::MD5 qw(md5_hex);
my $client=Mojo::Webqq->new(
		account     => $ENV{QQ},
		pwd         => md5_hex($ENV{pwd}),  
		http_debug  =>  0,
		log_level   =>  "debug",
		login_type  =>  "login"
);
$client->on(receive_message=>sub{
				my ($client,$msg)=@_;
		});
$client->load("Openqq",data=>{post_api=>$ENV{POST_API}});
$client->run();

