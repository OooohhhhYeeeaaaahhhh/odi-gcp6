####################
# project 
####################
variable "project" {}

variable "project_id" {
  type = string
}
variable "credentials_file" {}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

####################
#sub
####################
variable "pubsub_subscription_name" {
}
variable "topic" {
  type = string
}
####################
#bucket
####################
variable "bucket_name" {
  type        = string
  description = "The name of our bucket"
}
variable "bucket_location" {
  type    = string
  default = "us-central1"
}
variable "storage_class" {
  type = string
}
