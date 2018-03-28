resource "oraclepaas_database_service_instance" "default" {
  name        = "database-service-instance"
  description = "This is a description for an service instance"

  edition           = "EE"
  shape             = "oc1m"
  subscription_type = "HOURLY"
  version           = "12.2.0.1"
  vm_public_key     = "An ssh public key"

  database_configuration {
      admin_password     = "Pa55_Word"
      sid                = "BOTH"
      backup_destination = "NONE"
      usable_storage     = 15
  }

  backups {
      cloud_storage_container = "Storage-${var.domain}/database-service-instance-backup"
      auto_generate = true
  }
}
