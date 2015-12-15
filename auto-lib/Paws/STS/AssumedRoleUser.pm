package Paws::STS::AssumedRoleUser;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumedRoleId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumedRoleUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::STS::AssumedRoleUser object:

  $service_obj->Method(Att1 => { Arn => $value, ..., AssumedRoleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::STS::AssumedRoleUser object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The identifiers for the temporary security credentials that the
operation returns.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN of the temporary security credentials that are returned from
the AssumeRole action. For more information about ARNs and how to use
them in policies, see IAM Identifiers in I<Using IAM>.


=head2 B<REQUIRED> AssumedRoleId => Str

  A unique identifier that contains the role ID and the role session name
of the role that is being assumed. The role ID is generated by AWS when
the role is created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
