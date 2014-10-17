resources = %w(sqs_queue sns_topic ebs_volume s3_bucket)

resources.each do |r|
  Chef::Log.debug "AWS driver loading resource: #{r}"
  require "chef/resource/aws_#{r}"
  require "chef/provider/aws_#{r}"
end