package Paws::CodeDeploy::ErrorInformation;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', xmlname => 'code', request_name => 'code', traits => ['Unwrapped','NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ErrorInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::ErrorInformation object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::ErrorInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Information about a deployment error.

=head1 ATTRIBUTES


=head2 Code => Str

  The error code:

=over

=item * APPLICATION_MISSING: The application was missing. Note that
this error code will most likely be raised if the application is
deleted after the deployment is created but before it starts.

=item * DEPLOYMENT_GROUP_MISSING: The deployment group was missing.
Note that this error code will most likely be raised if the deployment
group is deleted after the deployment is created but before it starts.

=item * HEALTH_CONSTRAINTS: The deployment failed on too many instances
to be able to successfully deploy within the specified instance health
constraints.

=item * HEALTH_CONSTRAINTS_INVALID: The revision can never successfully
deploy within the instance health constraints as specified.

=item * IAM_ROLE_MISSING: The service role cannot be accessed.

=item * IAM_ROLE_PERMISSIONS: The service role does not have the
correct permissions.

=item * INTERNAL_ERROR: There was an internal error.

=item * NO_EC2_SUBSCRIPTION: The calling account is not subscribed to
the Amazon EC2 service.

=item * NO_INSTANCES: No instances were specified, or no instances can
be found.

=item * OVER_MAX_INSTANCES: The maximum number of instances was
exceeded.

=item * THROTTLED: The operation was throttled because the calling
account exceeded the throttling limits of one or more AWS services.

=item * TIMEOUT: The deployment has timed out.

=item * REVISION_MISSING: The revision ID was missing. Note that this
error code will most likely be raised if the revision is deleted after
the deployment is created but before it starts.

=back



=head2 Message => Str

  An accompanying error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
