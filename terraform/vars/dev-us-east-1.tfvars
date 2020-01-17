env = "dev"
region = "us-east-1"

# Sensor Data Queue
sensor_data_queue_name              = "sensor-data-queue"
sensor_data_deadletter_queue_name   = "sensor-data-deadletter-queue"
sensor_data_queue_delay_seconds     = "0"
sensor_data_queue_retention_seconds = "86400"
sensor_data_queue_retry_count       = "2"

# Tags
sensor_data_queue_tags = { 
  CreatedBy = "Chris"
  Service = "Sensor Data Queue"
  Company = "Ruegger Consulting LLC"
}
