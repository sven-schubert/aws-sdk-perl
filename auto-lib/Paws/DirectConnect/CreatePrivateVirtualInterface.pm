
package Paws::DirectConnect::CreatePrivateVirtualInterface;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has NewPrivateVirtualInterface => (is => 'ro', isa => 'Paws::DirectConnect::NewPrivateVirtualInterface', traits => ['NameInRequest'], request_name => 'newPrivateVirtualInterface' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreatePrivateVirtualInterface - Arguments for method CreatePrivateVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePrivateVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreatePrivateVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePrivateVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterface = $directconnect->CreatePrivateVirtualInterface(
      ConnectionId               => 'MyConnectionId',
      NewPrivateVirtualInterface => {
        asn                  => 1,
        virtualInterfaceName => 'MyVirtualInterfaceName',
        vlan                 => 1,
        addressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        amazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        authKey         => 'MyBGPAuthKey',        # OPTIONAL
        customerAddress => 'MyCustomerAddress',   # OPTIONAL
        directConnectGatewayId => 'MyDirectConnectGatewayId',    # OPTIONAL
        virtualGatewayId       => 'MyVirtualGatewayId',          # OPTIONAL
      },

    );

    # Results:
    my $AddressFamily          = $VirtualInterface->AddressFamily;
    my $AmazonAddress          = $VirtualInterface->AmazonAddress;
    my $AmazonSideAsn          = $VirtualInterface->AmazonSideAsn;
    my $Asn                    = $VirtualInterface->Asn;
    my $AuthKey                = $VirtualInterface->AuthKey;
    my $BgpPeers               = $VirtualInterface->BgpPeers;
    my $ConnectionId           = $VirtualInterface->ConnectionId;
    my $CustomerAddress        = $VirtualInterface->CustomerAddress;
    my $CustomerRouterConfig   = $VirtualInterface->CustomerRouterConfig;
    my $DirectConnectGatewayId = $VirtualInterface->DirectConnectGatewayId;
    my $Location               = $VirtualInterface->Location;
    my $OwnerAccount           = $VirtualInterface->OwnerAccount;
    my $RouteFilterPrefixes    = $VirtualInterface->RouteFilterPrefixes;
    my $VirtualGatewayId       = $VirtualInterface->VirtualGatewayId;
    my $VirtualInterfaceId     = $VirtualInterface->VirtualInterfaceId;
    my $VirtualInterfaceName   = $VirtualInterface->VirtualInterfaceName;
    my $VirtualInterfaceState  = $VirtualInterface->VirtualInterfaceState;
    my $VirtualInterfaceType   = $VirtualInterface->VirtualInterfaceType;
    my $Vlan                   = $VirtualInterface->Vlan;

    # Returns a L<Paws::DirectConnect::VirtualInterface> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreatePrivateVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str





=head2 B<REQUIRED> NewPrivateVirtualInterface => L<Paws::DirectConnect::NewPrivateVirtualInterface>

Detailed information for the private virtual interface to be created.

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePrivateVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

