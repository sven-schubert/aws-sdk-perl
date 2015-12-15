package Paws::SimpleWorkflow::WorkflowExecutionInfo;
  use Moose;
  has CancelRequested => (is => 'ro', isa => 'Bool', xmlname => 'cancelRequested', request_name => 'cancelRequested', traits => ['Unwrapped','NameInRequest']);
  has CloseStatus => (is => 'ro', isa => 'Str', xmlname => 'closeStatus', request_name => 'closeStatus', traits => ['Unwrapped','NameInRequest']);
  has CloseTimestamp => (is => 'ro', isa => 'Str', xmlname => 'closeTimestamp', request_name => 'closeTimestamp', traits => ['Unwrapped','NameInRequest']);
  has Execution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', xmlname => 'execution', request_name => 'execution', traits => ['Unwrapped','NameInRequest'], required => 1);
  has ExecutionStatus => (is => 'ro', isa => 'Str', xmlname => 'executionStatus', request_name => 'executionStatus', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Parent => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', xmlname => 'parent', request_name => 'parent', traits => ['Unwrapped','NameInRequest']);
  has StartTimestamp => (is => 'ro', isa => 'Str', xmlname => 'startTimestamp', request_name => 'startTimestamp', traits => ['Unwrapped','NameInRequest'], required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'tagList', request_name => 'tagList', traits => ['Unwrapped','NameInRequest']);
  has WorkflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', xmlname => 'workflowType', request_name => 'workflowType', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionInfo object:

  $service_obj->Method(Att1 => { CancelRequested => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CancelRequested

=head1 DESCRIPTION

Contains information about a workflow execution.

=head1 ATTRIBUTES


=head2 CancelRequested => Bool

  Set to true if a cancellation is requested for this workflow execution.


=head2 CloseStatus => Str

  If the execution status is closed then this specifies how the execution
was closed:

=over

=item * C<COMPLETED>: the execution was successfully completed.

=item * C<CANCELED>: the execution was canceled.Cancellation allows the
implementation to gracefully clean up before the execution is closed.

=item * C<TERMINATED>: the execution was force terminated.

=item * C<FAILED>: the execution failed to complete.

=item * C<TIMED_OUT>: the execution did not complete in the alloted
time and was automatically timed out.

=item * C<CONTINUED_AS_NEW>: the execution is logically continued. This
means the current execution was completed and a new execution was
started to carry on the workflow.

=back



=head2 CloseTimestamp => Str

  The time when the workflow execution was closed. Set only if the
execution status is CLOSED.


=head2 B<REQUIRED> Execution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The workflow execution this information is about.


=head2 B<REQUIRED> ExecutionStatus => Str

  The current status of the execution.


=head2 Parent => L<Paws::SimpleWorkflow::WorkflowExecution>

  If this workflow execution is a child of another execution then
contains the workflow execution that started this execution.


=head2 B<REQUIRED> StartTimestamp => Str

  The time when the execution was started.


=head2 TagList => ArrayRef[Str]

  The list of tags associated with the workflow execution. Tags can be
used to identify and list workflow executions of interest through the
visibility APIs. A workflow execution can have a maximum of 5 tags.


=head2 B<REQUIRED> WorkflowType => L<Paws::SimpleWorkflow::WorkflowType>

  The type of the workflow execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
