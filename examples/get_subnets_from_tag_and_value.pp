$subnets = stdlib_aws::subnets_from_tag({created_by => puppet})
notice($subnets)

$rsubnets = stdlib_aws::subnets_from_tag({created_by => puppet},'us-west-1')
notice($rsubnets)
