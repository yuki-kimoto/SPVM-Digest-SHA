use lib 't/lib';
use blib 'perl_impl';
use SPVM 'Digest::SHA';
use Digest::SHA;
use SPVMImpl;
Digest::SHA::is_spvm();
die unless $INC{'Digest/SHA.pm'} =~ /\bblib\b/;

use strict;
use SPVM 'Digest::SHA';

my @vecs = map { eval } <DATA>;

my $numtests = scalar(@vecs) / 2;
print "1..$numtests\n";

for (1 .. $numtests) {
	my $data = shift @vecs;
	my $digest = shift @vecs;
	my $sha = SPVM::Digest::SHA->new(1);
	$sha->add($data);
	print "not " unless $sha->hexdigest eq $digest;
	print "ok ", $_, "\n";
}

__DATA__
"abc"
"a9993e364706816aba3e25717850c26c9cd0d89d"
"abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"
"84983e441c3bd26ebaae4aa1f95129e5e54670f1"
"a" x 1000000
"34aa973cd4c4daa4f61eeb2bdbad27316534016f"
