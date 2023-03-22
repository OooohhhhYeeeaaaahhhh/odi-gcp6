# resource "google_service_account" "service_account_one" {
#   account_id   = "svc-odi-gcp"
#   display_name = "svc-odi-gcp"
#   project      = var.project_id
# }

# module "service_account-iam-bindings" {
#   source = "terraform-google-modules/iam/google//modules/service_accounts_iam"

#   service_accounts = [google_service_account.service_account_one.email]
#   project          = ""
#   mode             = "additive"
#   bindings = {
#     "roles/iam.serviceAccountKeyAdmin" = [
#       "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
#       "group:my-group@my-org.com",
#       "user:my-user@my-org.com",
#     ]

#     "roles/iam.serviceAccountTokenCreator" = [
#       "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
#       "group:my-group@my-org.com",
#       "user:my-user@my-org.com",
#     ]
#   }
#   conditional_bindings = [
#     {
#       role = "roles/iam.serviceAccountUser"
#       title = "expires_after_2019_12_31"
#       description = "Expiring at midnight of 2019-12-31"
#       expression = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
#       members = ["user:my-user@my-org.com"]
#     }
#   ]
# }