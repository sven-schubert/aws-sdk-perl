
package Paws::Comprehend::StartTopicsDetectionJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::InputDataConfig', required => 1);
  has JobName => (is => 'ro', isa => 'Str');
  has NumberOfTopics => (is => 'ro', isa => 'Int');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::OutputDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTopicsDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StartTopicsDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartTopicsDetectionJob - Arguments for method StartTopicsDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTopicsDetectionJob on the 
Amazon Comprehend service. Use the attributes of this class
as arguments to method StartTopicsDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTopicsDetectionJob.

As an example:

  $service_obj->StartTopicsDetectionJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that grants Amazon Comprehend read access to your
input data.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Comprehend::InputDataConfig>

Specifies the format and location of the input data for the job.



=head2 JobName => Str

The identifier of the job.



=head2 NumberOfTopics => Int

The number of topics to detect.



=head2 B<REQUIRED> OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

Specifies where to send the output files.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTopicsDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
