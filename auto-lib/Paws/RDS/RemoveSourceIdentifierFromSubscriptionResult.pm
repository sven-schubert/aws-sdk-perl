
package Paws::RDS::RemoveSourceIdentifierFromSubscriptionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Paws::RDS::EventSubscription');

}
1;