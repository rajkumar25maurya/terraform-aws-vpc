provider "aws" {
  region  = "us-east-1"
}


terraform {
  backend "raj-s3" {
    bucket = "tf-s3"
    key    = "tf.tfstate"
    }
}