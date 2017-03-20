variable "rancher_server_url" {
  default = "http://localhost:8080"
}

variable "environment_name" {}

provider "rancher" {
  api_url    = "${var.rancher_server_url}"
}

resource "rancher_environment" "default" {
  name = "${var.environment_name}"
  description = "The ${var.environment_name} environment"
  orchestration = "cattle"
}

resource "rancher_registration_token" "default" {
  name           = "test_token"
  description    = "Registration token for the ${var.environment_name} environment"
  environment_id = "${rancher_environment.default.id}"
}

output "registration_command" {
  value = "${rancher_registration_token.default.command}"
}
