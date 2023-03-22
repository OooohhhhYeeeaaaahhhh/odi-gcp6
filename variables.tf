####################
# project 
####################
variable "project" {}

variable "project_id" {
  type = string
}
variable "credentials_file" {
  type = string  
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}
####################
# Service account
####################
variable "service_account_id" {
  type = string
}
variable "service_account_name" {
  type = string
}
####################
#sub
####################
variable "pubsub_subscription_name" {
}
variable "file_receive_topic" {
  type = string
}
variable "dead_letter_topic" {
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
