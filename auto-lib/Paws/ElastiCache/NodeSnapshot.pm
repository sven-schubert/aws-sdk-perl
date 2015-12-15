package Paws::ElastiCache::NodeSnapshot;
  use Moose;
  has CacheNodeCreateTime => (is => 'ro', isa => 'Str');
  has CacheNodeId => (is => 'ro', isa => 'Str');
  has CacheSize => (is => 'ro', isa => 'Str');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::NodeSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::NodeSnapshot object:

  $service_obj->Method(Att1 => { CacheNodeCreateTime => $value, ..., SnapshotCreateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::NodeSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->CacheNodeCreateTime

=head1 DESCRIPTION

Represents an individual cache node in a snapshot of a cache cluster.

=head1 ATTRIBUTES


=head2 CacheNodeCreateTime => Str

  The date and time when the cache node was created in the source cache
cluster.


=head2 CacheNodeId => Str

  The cache node identifier for the node in the source cache cluster.


=head2 CacheSize => Str

  The size of the cache on the source cache node.


=head2 SnapshotCreateTime => Str

  The date and time when the source node's metadata and cache data set
was obtained for the snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
