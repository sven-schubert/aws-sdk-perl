
package Aws::CodeDeploy::StopDeploymentOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has status => (is => 'ro', isa => 'Str');
  has statusMessage => (is => 'ro', isa => 'Str');

}
1;