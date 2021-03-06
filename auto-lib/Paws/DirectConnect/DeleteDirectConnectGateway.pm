
package Paws::DirectConnect::DeleteDirectConnectGateway;
  use Moose;
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDirectConnectGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::DeleteDirectConnectGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DeleteDirectConnectGateway - Arguments for method DeleteDirectConnectGateway on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDirectConnectGateway on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DeleteDirectConnectGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDirectConnectGateway.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $DeleteDirectConnectGatewayResult =
      $directconnect->DeleteDirectConnectGateway(
      DirectConnectGatewayId => 'MyDirectConnectGatewayId',

      );

    # Results:
    my $DirectConnectGateway =
      $DeleteDirectConnectGatewayResult->DirectConnectGateway;

    # Returns a L<Paws::DirectConnect::DeleteDirectConnectGatewayResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/DeleteDirectConnectGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectConnectGatewayId => Str

The ID of the direct connect gateway.

Example: "abcd1234-dcba-5678-be23-cdef9876ab45"

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDirectConnectGateway in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

