package Paws::S3::Part;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has PartNumber => (is => 'ro', isa => 'Int');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Part

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Part object:

  $service_obj->Method(Att1 => { ETag => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Part object:

  $result = $service_obj->Method(...);
  $result->Att1->ETag

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ETag => Str

  Entity tag returned when the part was uploaded.


=head2 LastModified => Str

  Date and time at which the part was uploaded.


=head2 PartNumber => Int

  Part number identifying the part. This is a positive integer between 1
and 10,000.


=head2 Size => Int

  Size of the uploaded part data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
