
package Paws::S3::PutBucketWebsite;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', lazy => 1, default => sub{require MIME::Base64;
require Digest::MD5;
my $value = MIME::Base64::encode_base64( Digest::MD5::md5( shift->Body ) );
chomp $value;
return $value;}, traits => ['ParamInHeader']);
  has WebsiteConfiguration => (is => 'ro', isa => 'Paws::S3::WebsiteConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketWebsite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?website');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketWebsite - Arguments for method PutBucketWebsite on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketWebsite on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method PutBucketWebsite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketWebsite.

As an example:

  $service_obj->PutBucketWebsite(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ContentMD5 => Str





=head2 B<REQUIRED> WebsiteConfiguration => L<Paws::S3::WebsiteConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketWebsite in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

