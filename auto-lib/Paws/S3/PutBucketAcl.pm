
package Paws::S3::PutBucketAcl;
  use Moose;
  has AccessControlPolicy => (is => 'ro', isa => 'Paws::S3::AccessControlPolicy');
  has ACL => (is => 'ro', isa => 'Str', header_name => 'x-amz-acl', traits => ['ParamInHeader']);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', lazy => 1, default => sub{require MIME::Base64;
require Digest::MD5;
my $value = MIME::Base64::encode_base64( Digest::MD5::md5( shift->Body ) );
chomp $value;
return $value;}, traits => ['ParamInHeader']);
  has GrantFullControl => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-full-control', traits => ['ParamInHeader']);
  has GrantRead => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read', traits => ['ParamInHeader']);
  has GrantReadACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-read-acp', traits => ['ParamInHeader']);
  has GrantWrite => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write', traits => ['ParamInHeader']);
  has GrantWriteACP => (is => 'ro', isa => 'Str', header_name => 'x-amz-grant-write-acp', traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAcl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?acl');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAcl - Arguments for method PutBucketAcl on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAcl on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method PutBucketAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAcl.

As an example:

  $service_obj->PutBucketAcl(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccessControlPolicy => L<Paws::S3::AccessControlPolicy>





=head2 ACL => Str

The canned ACL to apply to the bucket.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str





=head2 ContentMD5 => Str





=head2 GrantFullControl => Str

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.



=head2 GrantWrite => Str

Allows grantee to create, overwrite, and delete any object in the
bucket.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

