
package Paws::Route53Domains::TransferDomainResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
1;