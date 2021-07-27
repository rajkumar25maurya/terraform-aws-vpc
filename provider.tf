provider "aws" {
  region  = "${var.region}"
}


terraform {
  backend "s3" {
    bucket = "raj-s3"
    key    = "tf.tfstate"
    region = "${var.region}"
    }
}