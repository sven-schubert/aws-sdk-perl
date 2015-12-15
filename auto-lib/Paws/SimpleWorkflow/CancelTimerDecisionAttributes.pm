package Paws::SimpleWorkflow::CancelTimerDecisionAttributes;
  use Moose;
  has TimerId => (is => 'ro', isa => 'Str', xmlname => 'timerId', request_name => 'timerId', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CancelTimerDecisionAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::CancelTimerDecisionAttributes object:

  $service_obj->Method(Att1 => { TimerId => $value, ..., TimerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::CancelTimerDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->TimerId

=head1 DESCRIPTION

Provides details of the C<CancelTimer> decision.

B<Access Control>

You can use IAM policies to control this decision's access to Amazon
SWF resources as follows:

=over

=item * Use a C<Resource> element with the domain name to limit the
action to only specified domains.

=item * Use an C<Action> element to allow or deny permission to call
this action.

=item * You cannot use an IAM policy to constrain this action's
parameters.

=back

If the caller does not have sufficient permissions to invoke the
action, or the parameter values fall outside the specified constraints,
the action fails. The associated event attribute's B<cause> parameter
will be set to OPERATION_NOT_PERMITTED. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TimerId => Str

  B<Required.> The unique ID of the timer to cancel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
