
# SQS Module Input Parameters

variable "queue_name" {
  description = "Queue Name"
}

variable "deadletter_queue_name" {
  description = "Queue Name"
}

variable "delay_seconds" {
  description = "Delay Seconds"
}


variable "message_retention_seconds" {
  description = "Message Retention Seconds"
}

variable "retry_count" {
  description = "Message Retention Seconds"
}

variable "tags" {
  description = "Lambda Tags"
  type = "map"
}