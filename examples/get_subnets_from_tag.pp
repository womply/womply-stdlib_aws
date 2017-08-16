$subnets = stdlib_aws::subnets_from_tag('created_by')
notice($subnets)

$rsubnets = stdlib_aws::subnets_from_tag('created_by','us-west-1')
notice($subnets)
