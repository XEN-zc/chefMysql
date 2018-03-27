require "aws-sdk.rb"

region='eu-west-1'
name_bucket= "xiaoprueba"
NAME_FILE='my.cnf'

#necesita region , pero no hace falta claves. 
s3 = Aws::S3::Resource.new(region: region)
          
bucket =s3.bucket(name_bucket)
    
obj =bucket.object(NAME_FILE)
  
obj.get(response_target: '/etc/mysql-foo/my.cnf')

