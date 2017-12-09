
package Paws::MediaLive::StopChannel;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::StopChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StopChannel - Arguments for method StopChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopChannel on the 
AWS Elemental MediaLive service. Use the attributes of this class
as arguments to method StopChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopChannel.

As an example:

  $service_obj->StopChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

A request to stop a running channel




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
