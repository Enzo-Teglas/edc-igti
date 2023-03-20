provider "google" {
  project = var.projeto-gcp-380714
  region = var.region
}

resource  "google_storage_bucket" "my_bucket"{
  name = var.enzo-raw
  location = var.region

  lifecycle_rule {
    condition{
      age = 10 # dias
    }
    action {
      type = "Delete"
    }
  }
}




# resource  "google_storage_bucket" "my_bucket"{
#   name = var.enzo-prep
#   location = var.region
# }


# resource  "google_storage_bucket" "my_bucket"{
#   name = var.enzo-view
#   location = var.region
# }
