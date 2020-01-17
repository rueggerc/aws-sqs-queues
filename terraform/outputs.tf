
output "sensor_data_queue_url" {
    value = "${module.queue_sensor_data.queue_id}"
}
output "sensor_data_queue_arn" {
    value = "${module.queue_sensor_data.queue_arn}"
}

output "sensor_data_queue_dl_url" {
    value = "${module.queue_sensor_data.queue_id}"
}
output "sensor_data_queue_dl_arn" {
    value = "${module.queue_sensor_data.queue_arn}"
}