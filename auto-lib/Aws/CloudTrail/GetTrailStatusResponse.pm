
package Aws::CloudTrail::GetTrailStatusResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsLogging => (is => 'ro', isa => 'Bool');
  has LatestCloudWatchLogsDeliveryError => (is => 'ro', isa => 'Str');
  has LatestCloudWatchLogsDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestDeliveryError => (is => 'ro', isa => 'Str');
  has LatestDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestNotificationError => (is => 'ro', isa => 'Str');
  has LatestNotificationTime => (is => 'ro', isa => 'Str');
  has StartLoggingTime => (is => 'ro', isa => 'Str');
  has StopLoggingTime => (is => 'ro', isa => 'Str');

}
1;