{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "InternalReadAccess",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::${bucket_id}/*"
      ],
      "Principal": "*",
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": ["${allow_ip_ranges}"]
        }
      }
    }
  ]
}
