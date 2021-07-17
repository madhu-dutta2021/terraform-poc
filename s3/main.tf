# Resource Block = Create Random Pet Name
resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

# Resource Block = Create AWS s3 bucket
resource "aws_s3_bucket" "md_bucket_2022" {
  bucket = random_pet.petname.id
  acl    = "public-read"
}
