
package Paws::SNS::SetTopicAttributes;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetTopicAttributes - Arguments for method SetTopicAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTopicAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method SetTopicAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTopicAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->SetTopicAttributes(
      AttributeName  => 'MyattributeName',
      TopicArn       => 'MytopicARN',
      AttributeValue => 'MyattributeValue',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/SetTopicAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The name of the attribute you want to set. Only a subset of the topic's
attributes are mutable.

Valid values: C<Policy> | C<DisplayName> | C<DeliveryPolicy>



=head2 AttributeValue => Str

The new value for the attribute.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTopicAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

