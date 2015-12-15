package Paws::RedShift::EventCategoriesMap;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EventInfoMap]');
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EventCategoriesMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::EventCategoriesMap object:

  $service_obj->Method(Att1 => { Events => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::EventCategoriesMap object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::RedShift::EventInfoMap>]

  The events in the event category.


=head2 SourceType => Str

  The Amazon Redshift source type, such as cluster or cluster-snapshot,
that the returned categories belong to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
