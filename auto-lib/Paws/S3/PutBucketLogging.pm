
package Paws::S3::PutBucketLogging;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BucketLoggingStatus => (is => 'ro', isa => 'Paws::S3::BucketLoggingStatus', required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', lazy => 1, default => sub{require MIME::Base64;
require Digest::MD5;
my $value = MIME::Base64::encode_base64( Digest::MD5::md5( shift->Body ) );
chomp $value;
return $value;}, traits => ['ParamInHeader']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLogging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?logging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketLogging - Arguments for method PutBucketLogging on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLogging on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method PutBucketLogging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLogging.

As an example:

  $service_obj->PutBucketLogging(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 B<REQUIRED> BucketLoggingStatus => L<Paws::S3::BucketLoggingStatus>





=head2 ContentMD5 => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLogging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

