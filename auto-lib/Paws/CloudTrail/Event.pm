package Paws::CloudTrail::Event;
  use Moose;
  has CloudTrailEvent => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
  has EventName => (is => 'ro', isa => 'Str');
  has EventTime => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Resource]');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::Event object:

  $service_obj->Method(Att1 => { CloudTrailEvent => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudTrailEvent

=head1 DESCRIPTION

Contains information about an event that was returned by a lookup
request. The result includes a representation of a CloudTrail event.

=head1 ATTRIBUTES


=head2 CloudTrailEvent => Str

  A JSON string that contains a representation of the event returned.


=head2 EventId => Str

  The CloudTrail ID of the event returned.


=head2 EventName => Str

  The name of the event returned.


=head2 EventTime => Str

  The date and time of the event returned.


=head2 Resources => ArrayRef[L<Paws::CloudTrail::Resource>]

  A list of resources referenced by the event returned.


=head2 Username => Str

  A user name or role name of the requester that called the API in the
event returned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
