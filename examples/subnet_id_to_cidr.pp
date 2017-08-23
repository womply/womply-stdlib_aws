$cidrblock = stdlib_aws::subnet_id_to_cidr('subnet-60f17d07')
notify { 'test cidr block':
  message =>  $cidrblock,
}
