##Inputs

$awscredential = {
   :use_iam_profile => true
}
$awsregion = 'us-east-1'

# AWS Tag(s)
# $aws_tags = ['myTag1', 'myTag2' ... ]
$aws_tags = []
# Specify a tag formatter if your tag value needs formatting
# ie. if your value is "DB - MyCluster01" you might use the
#     following to capture just the 'DB' prefix
# $aws_tags_formatter = '.split(" - ")[0]'
$aws_tags_formatter = ''

# AWS CloudWatch
$cloudwatchretries = 3
$cloudwatchtimeout = 3

# Neustar
# $neustarkey = '000.0.AAAAAAAAAA.AAAAAAAAAAA.AAAAAAAAAAAAAAAAAAAAA'
$neustarkey = ''
# $neustarsecret = 'AAAAAAAA'
$neustarsecret = ''

# Twitter API, generate an app/key here: https://dev.twitter.com/apps
# $tw_consumer_key = 'aaaaaaaaaaaaaaaaaaaa'
$tw_consumer_key = ''
# $tw_consumer_secret = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
$tw_consumer_secret = ''
# $tw_access_token = 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'
$tw_access_token = ''
# $tw_access_token_secret = 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'
$tw_access_token_secret = ''

##Outputs

# Graphite
# $graphiteserver = '127.0.0.1'
$graphiteprefix = ''
$graphiteserver = 'graphite.service.consul'
$graphiteport = 2003
$graphiteretries = 3
$graphitetimeout = 3

