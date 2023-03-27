resource "google_storage_bucket" "testebucket" {
  name          = "testebucket"
  location      = "EU"
  force_destroy = true

lifecycle_rule {
  condition{
    age = 10 # dias
  }
  action {
    type = "Delete"
  }
  }
}

