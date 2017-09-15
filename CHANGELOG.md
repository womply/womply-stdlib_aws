# Changelog

All notable changes to this project will be documented in this file.

## Release 0.3.1

**Bugfixes**
  * Fixed typo in subnets_from_tag codebase that causes failures when specifying a key and value for a tag.

## Release 0.3.0

**Features**
  * Added type Stdlib_aws::S3bucket to validate S3 bucket names.
    * https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html
  * Added stdlib_aws::s3_bucket_to_arn function.
    * Uses Stdlib_aws::S3bucket type to validate bucket names.

## Release 0.2.1

**Bugfixes**
  * Replaced entry in gemfile for `aws-sdk-core` with correct gem, `aws-sdk`.


## Release 0.2.0

**Features**
  * `stdlib_aws::subnet_id_to_cidr` function. Retrieves a CIDR-notation address for a given AWS Subnet ID.

## Release 0.0.2

**Features**
  * Published to forge!
  * Version bump for published release!

## Release 0.0.1

**Features**

  * `stdlib_aws::subnets_from_tag` function. Retrieves a list of AWS subnet IDs based on a supplied tag.

**Bugfixes**

**Known Issues**

No tests (yet).
