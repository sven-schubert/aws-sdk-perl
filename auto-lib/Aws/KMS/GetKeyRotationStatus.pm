
package Aws::KMS::GetKeyRotationStatus {
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKeyRotationStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::KMS::GetKeyRotationStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;