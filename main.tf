provider "local" {
  # No configuration required for the local provider
}

resource "local_file" "example" {
  filename = "${path.module}/example.txt"
  content  = "Hello, Terraform!"
}

resource "null_resource" "fail_apply" {
  # provisioner "local-exec" {
  #   command = "exit 0"
    # This will always succeed, causing the apply phase to succeed.
  # }

  provisioner "local-exec" {
    command = "exit 1"
    # This will always fail, causing the apply phase to fail.
  }

  triggers = {
    always_run = "${timestamp()}"
  }
}
