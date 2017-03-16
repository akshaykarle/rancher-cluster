variable "rancher_server_url" {
  default = "http://localhost:8080"
}

provider "rancher" {
  api_url    = "${var.rancher_server_url}"
}

resource "rancher_environment" "Test" {
  name = "Test"
  description = "The Test environment"
  orchestration = "cattle"
}

resource "rancher_registration_token" "Test" {
  name           = "test_token"
  description    = "Registration token for the Test environment"
  environment_id = "${rancher_environment.Test.id}"
}

output "test_registration_command" {
  value = "${rancher_registration_token.Test.command}"
}
