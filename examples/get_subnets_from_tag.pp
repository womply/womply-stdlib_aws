$subnets = stdlib_aws::subnets_from_tag('created_by')
notice($subnets)
