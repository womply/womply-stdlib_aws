# stdlib_aws::s3_bucket_to_arn
#
# Takes the name of an S3 bucket and returns its full ARN
#
# @summary Convert valid S3 bucket names to full ARN.
#
# @example
#   stdlib_aws::s3_bucket_to_arn('mybucket') =>
function stdlib_aws::s3_bucket_to_arn (
  Stdlib_aws::S3bucket $bucket,
) >> String {
  "arn:aws:s3:::${bucket}"
}
