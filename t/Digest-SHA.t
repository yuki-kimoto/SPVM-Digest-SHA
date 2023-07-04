use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";

use Test::More;

BEGIN { $ENV{SPVM_BUILD_DIR} = "$FindBin::Bin/.spvm_build"; }

use SPVM 'TestCase::Digest::SHA';

use SPVM 'Fn';
use SPVM::Digest::SHA;
use SPVM 'Digest::SHA';

my $api = SPVM::api();

# Start objects count
my $start_memory_blocks_count = $api->get_memory_blocks_count();

# SPVM::Digest::SHA
{
  # Class Methods
  {
    # sha1
    ok(SPVM::TestCase::Digest::SHA->sha1);
    # sha1_hex
    ok(SPVM::TestCase::Digest::SHA->sha1_hex);
    # sha1_base64
    ok(SPVM::TestCase::Digest::SHA->sha1_base64);
    # sha224
    ok(SPVM::TestCase::Digest::SHA->sha224);
    # sha224_hex
    ok(SPVM::TestCase::Digest::SHA->sha224_hex);
    # sha224_base64
    ok(SPVM::TestCase::Digest::SHA->sha224_base64);
    # sha256
    ok(SPVM::TestCase::Digest::SHA->sha256);
    # sha256_hex
    ok(SPVM::TestCase::Digest::SHA->sha256_hex);
    # sha256_base64
    ok(SPVM::TestCase::Digest::SHA->sha256_base64);
    # sha384
    ok(SPVM::TestCase::Digest::SHA->sha384);
    # sha384_hex
    ok(SPVM::TestCase::Digest::SHA->sha384_hex);
    # sha384_base64
    ok(SPVM::TestCase::Digest::SHA->sha384_base64);
    # sha512
    ok(SPVM::TestCase::Digest::SHA->sha512);
    # sha512_hex
    ok(SPVM::TestCase::Digest::SHA->sha512_hex);
    # sha512_base64
    ok(SPVM::TestCase::Digest::SHA->sha512_base64);
    # sha512224
    ok(SPVM::TestCase::Digest::SHA->sha512224);
    # sha512224_hex
    ok(SPVM::TestCase::Digest::SHA->sha512224_hex);
    # sha512224_base64
    ok(SPVM::TestCase::Digest::SHA->sha512224_base64);
    # sha512256
    ok(SPVM::TestCase::Digest::SHA->sha512256);
    # sha512256_hex
    ok(SPVM::TestCase::Digest::SHA->sha512256_hex);
    # sha512256_base64
    ok(SPVM::TestCase::Digest::SHA->sha512256_base64);
    # hmac_sha1
    ok(SPVM::TestCase::Digest::SHA->hmac_sha1);
    # hmac_sha1_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha1_hex);
    # hmac_sha1_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha1_base64);
    # hmac_sha224
    ok(SPVM::TestCase::Digest::SHA->hmac_sha224);
    # hmac_sha224_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha224_hex);
    # hmac_sha224_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha224_base64);
    # hmac_sha256
    ok(SPVM::TestCase::Digest::SHA->hmac_sha256);
    # hmac_sha256_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha256_hex);
    # hmac_sha256_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha256_base64);
    # hmac_sha384
    ok(SPVM::TestCase::Digest::SHA->hmac_sha384);
    # hmac_sha384_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha384_hex);
    # hmac_sha384_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha384_base64);
    # hmac_sha512
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512);
    # hmac_sha512_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512_hex);
    # hmac_sha512_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512_base64);
    # hmac_sha512224
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512224);
    # hmac_sha512224_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512224_hex);
    # hmac_sha512224_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512224_base64);
    # hmac_sha512256
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512256);
    # hmac_sha512256_hex
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512256_hex);
    # hmac_sha512256_base64
    ok(SPVM::TestCase::Digest::SHA->hmac_sha512256_base64);
    
  }
}

# Version
{
  is($SPVM::Digest::SHA::VERSION, SPVM::Fn->get_version_string('Digest::SHA'));
}

# All object is freed
my $end_memory_blocks_count = $api->get_memory_blocks_count;
is($end_memory_blocks_count, $start_memory_blocks_count);

done_testing;
