
variable "bucket_name" {
  type        = string
  default     = "<YOUR_BUCKET_NAME>"
  description = "welcome to my awesome bucket website"
}
variable "region" {
  type    = string
  default = "<YOUR_REGION>"
}
variable "access_key" {
  type      = any
  default   = "<YOUR_ACCESS_KEY>"
  sensitive = true
}
variable "secret_key" {
  type      = any
  default   = "<YOUR_SECRET_KEY>"
  sensitive = true
}