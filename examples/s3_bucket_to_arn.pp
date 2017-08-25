$bucket_name = 'importantdata'
$bucket_arn = stdlib_aws::s3_bucket_to_arn($bucket_name)

notify { 'bucket arn':
  message => "The S3 bucket's ARN is: ${bucket_arn}",
}
