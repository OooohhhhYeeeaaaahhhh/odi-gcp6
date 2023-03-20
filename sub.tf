module "pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "5.0.0"
  # insert the 2 required variables here
  project_id = var.project_id
  topic      = var.file_receive_topic
}