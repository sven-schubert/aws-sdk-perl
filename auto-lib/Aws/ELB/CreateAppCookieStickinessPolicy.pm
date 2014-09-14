
package Aws::ELB::CreateAppCookieStickinessPolicy {
  use Moose;
  has CookieName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::ELB::CreateAppCookieStickinessPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicyResult');
}
1;