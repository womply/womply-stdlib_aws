require 'aws-sdk'
require 'retries'

# Returns a CIDR address for a given AWS Subnet ID, by region. Uses default region when none is given.
Puppet::Functions.create_function(:'stdlib_aws::subnet_id_to_cidr') do
  # Returns the correct IPv4 CIDR value for a given AWS subnet.
  # @param subnetid The AWS Subnet ID you wish to retrieve CIDR info for.
  # @param region Optionally, the region to use for subnet discovery. Will use default region for your AWS credentials if not supplied.
  # @return [String] Returns the CIDR-notation network info for a subnet, as a string.
  dispatch :cidr_from_subnet_id do
    param 'String', :subnetid
    optional_param 'String', :region
    return_type 'String'
  end

  def ec2_client(region)
    case region
    when nil
      Aws::EC2::Resource.new
    when String
      Aws::EC2::Resource.new({region: region})
    end
  end

  def cidr_from_subnet_id(subnetid, region=nil)
    client = ec2_client(region)
    client.subnet(subnetid).cidr_block
  end
end
