module "pubsub" {
  source  = "terraform-google-modules/pubsub/google"
  version = "5.0.0"
  # insert the 2 required variables here
  project_id = var.project_id
  topic      = var.file_receive_topic
}

# module "pubsub" {
#   source  = "terraform-google-modules/pubsub/google"
#   version = "~> 5.0"

#   topic      = var.file_receive_topic
#   project_id = var.project_id
  # push_subscriptions = [
  #   {
  #     name                       = "push"                                               // required
  #     ack_deadline_seconds       = 20                                                   // optional
  #     push_endpoint              = "https://example.com"                                // required
  #     x-goog-version             = "v1beta1"                                            // optional
  #     oidc_service_account_email = "sa@example.com"                                     // optional
  #     audience                   = "example"                                            // optional
  #     expiration_policy          = "1209600s"                                           // optional
  #     dead_letter_topic          = "projects/my-pubsub-project/topics/example-dl-topic" // optional
  #     max_delivery_attempts      = 5                                                    // optional
  #     maximum_backoff            = "600s"                                               // optional
  #     minimum_backoff            = "300s"                                               // optional
  #     filter                     = "attributes.domain = \"com\""                        // optional
  #   }
  # ]
  # pull_subscriptions = [
  #   {
  #     name                         = "pull"                                               // required
  #     ack_deadline_seconds         = 20                                                   // optional
  #     #dead_letter_topic            = "projects/my-pubsub-project/topics/example-dl-topic" // optional
  #     max_delivery_attempts        = 5                                                    // optional
  #     maximum_backoff              = "600s"                                               // optional
  #     minimum_backoff              = "300s"                                               // optional
  #     filter                       = "attributes.domain = \"com\""                        // optional
  #     enable_message_ordering      = true                                                 // optional
  #     service_account              = "service2@project2.iam.gserviceaccount.com"          // optional
  #     enable_exactly_once_delivery = true                                                 // optional
  #   }
  # ]
  # bigquery_subscriptions = [
  #   {
  #     name                = "bigquery"              // required
  #     table               = "project.dataset.table" // required
  #     use_topic_schema    = true                    // optional
  #     write_metadata      = false                   // optional
  #     drop_unknown_fields = false                   // optional
  #   }
  # ]
# }