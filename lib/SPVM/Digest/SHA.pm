package SPVM::Digest::SHA;

our $VERSION = '0.01';

1;

=head1 Name

SPVM::Digest::SHA - Digest::SHA is a SPVM module

=head1 Usage

  use Digest::SHA;
  
=head1 Description

C<Digest::SHA> is a L<SPVM> module.

=head1 Field Methods

=head2 

  method hashsize : int ()

=head2 

  method algorithm : int ()
  
=head1 Class Methods

=head2 sha1

  static method sha1 : string ($data : string)

=head2 sha1_hex

  static method sha1_hex : string ($data : string)

=head2 sha1_base64

  static method sha1_base64 : string ($data : string)

=head2 sha224

  static method sha224 : string ($data : string)

=head2 sha224_hex

  static method sha224_hex : string ($data : string)

=head2 sha224_base64

  static method sha224_base64 : string ($data : string)

=head2 sha256

  static method sha256 : string ($data : string)

=head2 sha256_hex

  static method sha256_hex : string ($data : string)

=head2 sha256_base64

  static method sha256_base64 : string ($data : string)

=head2 sha384

  static method sha384 : string ($data : string)

=head2 sha384_hex

  static method sha384_hex : string ($data : string)

=head2 sha384_base64

  static method sha384_base64 : string ($data : string)

=head2 sha512

  static method sha512 : string ($data : string)

=head2 sha512_hex

  static method sha512_hex : string ($data : string)

=head2 sha512_base64

  static method sha512_base64 : string ($data : string)

=head2 sha512224

  static method sha512224 : string ($data : string)

=head2 sha512224_hex

  static method sha512224_hex : string ($data : string)

=head2 sha512224_base64

  static method sha512224_base64 : string ($data : string)

=head2 sha512256

  static method sha512256 : string ($data : string)

=head2 sha512256_hex

  static method sha512256_hex : string ($data : string)

=head2 sha512256_base64

  static method sha512256_base64 : string ($data : string)

=head2 hmac_sha1

  static method hmac_sha1 : string ($data : string, $key : string)

=head2 hmac_sha1_hex

  static method hmac_sha1_hex : string ($data : string, $key : string)

=head2 hmac_sha1_base64

  static method hmac_sha1_base64 : string ($data : string, $key : string)

=head2 hmac_sha224

  static method hmac_sha224 : string ($data : string, $key : string)

=head2 hmac_sha224_hex

  static method hmac_sha224_hex : string ($data : string, $key : string)

=head2 hmac_sha224_base64

  static method hmac_sha224_base64 : string ($data : string, $key : string)

=head2 hmac_sha256

  static method hmac_sha256 : string ($data : string, $key : string)

=head2 hmac_sha256_hex

  static method hmac_sha256_hex : string ($data : string, $key : string)

=head2 hmac_sha256_base64

  static method hmac_sha256_base64 : string ($data : string, $key : string)

=head2 hmac_sha384

  static method hmac_sha384 : string ($data : string, $key : string)

=head2 hmac_sha384_hex

  static method hmac_sha384_hex : string ($data : string, $key : string)

=head2 hmac_sha384_base64

  static method hmac_sha384_base64 : string ($data : string, $key : string)

=head2 hmac_sha512

  static method hmac_sha512 : string ($data : string, $key : string)

=head2 hmac_sha512_hex

  static method hmac_sha512_hex : string ($data : string, $key : string)

=head2 hmac_sha512_base64

  static method hmac_sha512_base64 : string ($data : string, $key : string)

=head2 hmac_sha512224

  static method hmac_sha512224 : string ($data : string, $key : string)

=head2 hmac_sha512224_hex

  static method hmac_sha512224_hex : string ($data : string, $key : string)

=head2 hmac_sha512224_base64

  static method hmac_sha512224_base64 : string ($data : string, $key : string)

=head2 hmac_sha512256

  static method hmac_sha512256 : string ($data : string, $key : string)

=head2 hmac_sha512256_hex

  static method hmac_sha512256_hex : string ($data : string, $key : string)

=head2 hmac_sha512256_base64

  static method hmac_sha512256_base64 : string ($data : string, $key : string)

=head2 new

  static method new : Digest::SHA ($alg : int)
  
=head1 Instance Methods

=head2 add

  method add : void ($date : string)

=head2 digest

  method digest : string ()

=head2 b64digest

  method hexdigest : string ()

=head2 

  method b64digest : string ()

=head2 

  method clone : Digest::SHA ()

=head1 Repository

L<https://github.com/yuki-kimoto/SPVM-Digest-SHA>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright 2022-2022 Yuki Kimoto, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

