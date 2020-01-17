
resource "aws_sqs_queue" "deadletter_queue" {
  name                      = "${var.deadletter_queue_name}"
  delay_seconds             = 0
  # max_message_size          = 2048
  tags = "${var.tags}"
}


resource "aws_sqs_queue" "main_queue" {
  name                      = "${var.queue_name}"
  delay_seconds             = "${var.delay_seconds}"
  # max_message_size          = 2048
  # message_retention_seconds = "${var.message_retention_seconds}"
  receive_wait_time_seconds = 0
  redrive_policy            = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.deadletter_queue.arn
    maxReceiveCount     = "${var.retry_count}"
  })
  tags = "${var.tags}"
}