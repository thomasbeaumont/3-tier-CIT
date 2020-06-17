#Used to test GitHub Actions

# The configuration for the `remote` backend.
     terraform {
  backend "s3" {
    bucket = "terraform-tfstate-tom"
    key    = "terraform-ci.tfstate"
    region = "ap-southeast-1"
  }
     }

     # An example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing!"
       }
     }
