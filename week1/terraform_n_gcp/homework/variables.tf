locals {
  data_lake_bucket = "dtc_de_zc_data_lake"
}

variable "project" {
  description = "cool-device-375811"
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "asia-south2"
  // I've choosen "asia-south2" (Delhi) becouse it is the closest region to my current city (Tashkent)
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "taxi_trips_data"
}

variable "credentials" {
  default = "cool-device-375811-7c5d624c377a.json"
}