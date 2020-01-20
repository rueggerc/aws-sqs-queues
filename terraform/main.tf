provider "aws" {
    region = "${var.region}"
}

terraform {
    backend "s3" {
        bucket = "rueggerllc-terraform-state"
        key = "aws-sqs-queues/us-east-1/dev/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "rueggerllc-terraform-locks"
        encrypt = true
    }
}

data "aws_caller_identity" "current_account" {
}


##################################
# Queue: Sensor Data
##################################
module "queue_sensor_data" {
    source                    = "./modules/standardqueue"
    queue_name                = "${upper(var.sensor_data_queue_name)}-${upper(var.env)}"
    deadletter_queue_name     = "${upper(var.sensor_data_deadletter_queue_name)}-${upper(var.env)}"
    delay_seconds             = "${var.sensor_data_queue_delay_seconds}"
    message_retention_seconds = "${var.sensor_data_queue_retention_seconds}"
    retry_count               = "${var.sensor_data_queue_retry_count}"
    tags                      = "${var.sensor_data_queue_tags}"
}

##################################
# Queue: Response1
##################################
module "queue_response1" {
    source                    = "./modules/standardqueue"
    queue_name                = "${upper(var.response1_queue_name)}-${upper(var.env)}"
    deadletter_queue_name     = "${upper(var.response1_deadletter_queue_name)}-${upper(var.env)}"
    delay_seconds             = "${var.response1_queue_delay_seconds}"
    message_retention_seconds = "${var.response1_queue_retention_seconds}"
    retry_count               = "${var.response1_queue_retry_count}"
    tags                      = "${var.response1_queue_tags}"
}


##################################
# Queue: Response2
##################################
module "queue_response2" {
    source                    = "./modules/standardqueue"
    queue_name                = "${upper(var.response2_queue_name)}-${upper(var.env)}"
    deadletter_queue_name     = "${upper(var.response2_deadletter_queue_name)}-${upper(var.env)}"
    delay_seconds             = "${var.response2_queue_delay_seconds}"
    message_retention_seconds = "${var.response2_queue_retention_seconds}"
    retry_count               = "${var.response2_queue_retry_count}"
    tags                      = "${var.response2_queue_tags}"
}
