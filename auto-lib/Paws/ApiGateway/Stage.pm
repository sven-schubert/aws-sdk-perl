
package Paws::ApiGateway::Stage;
  use Moose;
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool');
  has CacheClusterSize => (is => 'ro', isa => 'Str');
  has CacheClusterStatus => (is => 'ro', isa => 'Str');
  has ClientCertificateId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has MethodSettings => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethodSettings');
  has StageName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Stage

=head1 ATTRIBUTES

=head2 CacheClusterEnabled => Bool

  Specifies whether a cache cluster is enabled for the stage.
=head2 CacheClusterSize => Str

  The size of the cache cluster for the stage, if enabled.
=head2 CacheClusterStatus => Str

  The status of the cache cluster for the stage, if enabled.
=head2 ClientCertificateId => Str

  
=head2 CreatedDate => Str

  The date and time that the stage was created, in ISO 8601 format.
=head2 DeploymentId => Str

  The identifier of the Deployment that the stage points to.
=head2 Description => Str

  The stage's description.
=head2 LastUpdatedDate => Str

  The date and time that information about the stage was last updated, in
ISO 8601 format.
=head2 MethodSettings => L<Paws::ApiGateway::MapOfMethodSettings>

  A map that defines the method settings for a Stage resource. Keys are
defined as C<{resource_path}/{http_method}> for an individual method
override, or C<\*/\*> for the settings applied to all methods in the
stage.
=head2 StageName => Str

  The name of the stage is the first path segment in the Uniform Resource
Identifier (URI) of a call to Amazon API Gateway.


=cut

