package Paws::ElasticBeanstalk::CustomAmi;
  use Moose;
  has ImageId => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CustomAmi

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::CustomAmi object:

  $service_obj->Method(Att1 => { ImageId => $value, ..., VirtualizationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::CustomAmi object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageId

=head1 DESCRIPTION

A custom AMI available to platforms.

=head1 ATTRIBUTES


=head2 ImageId => Str

  THe ID of the image used to create the custom AMI.


=head2 VirtualizationType => Str

  The type of virtualization used to create the custom AMI.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
