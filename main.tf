
terraform {
backend "gcs" {
  bucket = "enzo-tf-state"   
  prefix = "pipeline-enzo"           
  }
}