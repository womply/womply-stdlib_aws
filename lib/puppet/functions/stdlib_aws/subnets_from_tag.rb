require 'aws-sdk-core'
require 'retries'
# Returns a list of AWS subnets by Subnet ID for the given tag and optionally the tag's value, and/or filtered by region.
Puppet::Functions.create_function(:'stdlib_aws::subnets_from_tag') do
  # Returns a list of subnet IDs with the given tag.
  # @param tag The tag name.
  # @return [Array] Returns an array of AWS Subnet IDs
  # @example Retrieving the list of all AWS Subnet IDs for subnets with the given tag
  #   stdlib_aws::subnets_from_tag('created_by') => ['subnet-752ac411','subnet-752zx419']
  dispatch :subnets_from_tag do
    param 'String', :tag
    optional_param 'String', :region
    return_type 'Array'
  end

  # Returns a list of subnet IDs with the given tag and value(s).
  # @param tagpair A hash containing a kv pair of the tag and desired value(s).
  # @return [Array] Returns an array of AWS Subnet IDs
  # @example Retrieving the list of all AWS Subnet IDs for subnets with the given tag
  #   stdlib_aws::subnets_from_tag({created_by: 'puppet'}) => ['subnet-752ac411']
  dispatch :subnets_from_tag_and_value do
    param 'Hash', :tagpair
    optional_param 'String', :region
    return_type 'Array'
  end

  def ec2_client(region)
    case region
    when nil
      Aws::EC2::Client.new
    when String
      Aws::EC2::Client.new({region: region})
    end
  end

  def subnets_from_tag(tag, region=nil)
    client = ec2_client(region)
    tag_filter = {
      filters: [
        {
          name: 'tag-key',
          values: [tag],
        },
      ],
    }

    subnets = client.describe_subnets(tag_filter).subnets
    subnets.map { |subnet| subnet.subnet_id }
  end


  def subnets_from_tag_and_value(tagpair, region=nil)
    client = ec2_client(region)

    tagname = tagpair.keys.first
    tagvalue = tagpair[tagname]

    tag_filter = {
      filters: [
        {
          name: "tag:#{tagname}",
          values: [tagvalue].flatten,
        },
      ],
    }

    subnets = client.describe_subnets(tag_filter).subnets
    subnets.map { |subnet| subnet.subnet_id }
  end
end

