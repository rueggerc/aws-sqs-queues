

output "queue_id" {
    value = "${aws_sqs_queue.main_queue.id}"
}

output "queue_arn" {
    value = "${aws_sqs_queue.main_queue.arn}"
}

output "deadletter_queue_id" {
    value = "${aws_sqs_queue.deadletter_queue.id}"
}

output "deadletter_queue_arn" {
    value = "${aws_sqs_queue.deadletter_queue.arn}"
}