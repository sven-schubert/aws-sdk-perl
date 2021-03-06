
package Paws::WAF::CreateRegexMatchSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has RegexMatchSet => (is => 'ro', isa => 'Paws::WAF::RegexMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRegexMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRegexMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RegexMatchSet => L<Paws::WAF::RegexMatchSet>

A RegexMatchSet that contains no C<RegexMatchTuple> objects.


=head2 _request_id => Str


=cut

1;