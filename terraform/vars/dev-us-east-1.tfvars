env = "dev"
region = "us-east-1"

# Sensor Data Queue
sensor_data_queue_name              = "sensor-data-queue"
sensor_data_deadletter_queue_name   = "sensor-data-deadletter-queue"
sensor_data_queue_delay_seconds     = "0"
sensor_data_queue_retention_seconds = "86400"
sensor_data_queue_retry_count       = "2"

# Response1 Queue
response1_queue_name                = "response1-queue"
response1_deadletter_queue_name     = "response1-deadletter-queue"
response1_queue_delay_seconds       = "0"
response1_queue_retention_seconds   = "86400"
response1_queue_retry_count         = "2"

# Response2 Queue
response2_queue_name                = "response2-queue"
response2_deadletter_queue_name     = "response2-deadletter-queue"
response2_queue_delay_seconds       = "0"
response2_queue_retention_seconds   = "86400"
response2_queue_retry_count         = "2"

# Tags
sensor_data_queue_tags = { 
  CreatedBy = "Chris"
  Service = "Sensor Data Queue"
  Company = "Ruegger Consulting LLC"
}

# Tags
response1_queue_tags = { 
  CreatedBy = "Chris"
  Service = "Sensor Data Queue"
  Company = "Ruegger Consulting LLC"
}

# Tags
response2_queue_tags = { 
  CreatedBy = "Chris"
  Service = "Sensor Data Queue"
  Company = "Ruegger Consulting LLC"
}
