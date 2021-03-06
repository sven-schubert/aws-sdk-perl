
package Paws::RDS::DeleteDBClusterParameterGroup;
  use Moose;
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBClusterParameterGroup - Arguments for method DeleteDBClusterParameterGroup on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBClusterParameterGroup on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteDBClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBClusterParameterGroup.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To delete a DB cluster parameter group.
    # This example deletes the specified DB cluster parameter group.
    $rds->DeleteDBClusterParameterGroup(
      {
        'DBClusterParameterGroupName' => 'mydbclusterparametergroup'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterParameterGroupName => Str

The name of the DB cluster parameter group.

Constraints:

=over

=item *

Must be the name of an existing DB cluster parameter group.

=item *

You can't delete a default DB cluster parameter group.

=item *

Cannot be associated with any DB clusters.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBClusterParameterGroup in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

