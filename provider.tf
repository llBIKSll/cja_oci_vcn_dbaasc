provider "oci" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region = "${var.region}"
}

provider "oraclepaas" {
  user              = "${var.user}"
  password          = "${var.password}"
  identity_domain   = "${var.identity_domain}"
  # database_endpoint = "..."
  java_endpoint     = "${var.java_endpoint}"
}