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
    # hmac_sha1
    ok(SPVM::TestCase::Digest::SHA->hmac_sha1);
    
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