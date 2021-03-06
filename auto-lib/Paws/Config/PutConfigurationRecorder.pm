
package Paws::Config::PutConfigurationRecorder;
  use Moose;
  has ConfigurationRecorder => (is => 'ro', isa => 'Paws::Config::ConfigurationRecorder', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationRecorder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigurationRecorder - Arguments for method PutConfigurationRecorder on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationRecorder on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutConfigurationRecorder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationRecorder.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->PutConfigurationRecorder(
      ConfigurationRecorder => {
        name           => 'MyRecorderName',    # min: 1, max: 256; OPTIONAL
        recordingGroup => {
          allSupported               => 1,     # OPTIONAL
          includeGlobalResourceTypes => 1,     # OPTIONAL
          resourceTypes              => [
            'AWS::EC2::CustomerGateway',
            ... # values: AWS::EC2::CustomerGateway, AWS::EC2::EIP, AWS::EC2::Host, AWS::EC2::Instance, AWS::EC2::InternetGateway, AWS::EC2::NetworkAcl, AWS::EC2::NetworkInterface, AWS::EC2::RouteTable, AWS::EC2::SecurityGroup, AWS::EC2::Subnet, AWS::CloudTrail::Trail, AWS::EC2::Volume, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway, AWS::IAM::Group, AWS::IAM::Policy, AWS::IAM::Role, AWS::IAM::User, AWS::ACM::Certificate, AWS::RDS::DBInstance, AWS::RDS::DBSubnetGroup, AWS::RDS::DBSecurityGroup, AWS::RDS::DBSnapshot, AWS::RDS::EventSubscription, AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::S3::Bucket, AWS::SSM::ManagedInstanceInventory, AWS::Redshift::Cluster, AWS::Redshift::ClusterSnapshot, AWS::Redshift::ClusterParameterGroup, AWS::Redshift::ClusterSecurityGroup, AWS::Redshift::ClusterSubnetGroup, AWS::Redshift::EventSubscription, AWS::CloudWatch::Alarm, AWS::CloudFormation::Stack, AWS::DynamoDB::Table, AWS::AutoScaling::AutoScalingGroup, AWS::AutoScaling::LaunchConfiguration, AWS::AutoScaling::ScalingPolicy, AWS::AutoScaling::ScheduledAction, AWS::CodeBuild::Project, AWS::WAF::RateBasedRule, AWS::WAF::Rule, AWS::WAF::WebACL, AWS::WAFRegional::RateBasedRule, AWS::WAFRegional::Rule, AWS::WAFRegional::WebACL, AWS::CloudFront::Distribution, AWS::CloudFront::StreamingDistribution, AWS::WAF::RuleGroup, AWS::WAFRegional::RuleGroup, AWS::Lambda::Function, AWS::ElasticBeanstalk::Application, AWS::ElasticBeanstalk::ApplicationVersion, AWS::ElasticBeanstalk::Environment, AWS::ElasticLoadBalancing::LoadBalancer, AWS::XRay::EncryptionConfig
          ],    # OPTIONAL
        },    # OPTIONAL
        roleARN => 'MyString',    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutConfigurationRecorder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationRecorder => L<Paws::Config::ConfigurationRecorder>

The configuration recorder object that records each configuration
change made to the resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConfigurationRecorder in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

