module "pdf-service-api" {
  source = "git@github.com/contino/moj-module-webapp.git?ref=0.0.78"
  product = "${var.product}-${var.microservice}"
  location = "${var.location}"
  env = "${var.env}"
  asename = "${data.terraform_remote_state.core_apps_compute.ase_name[0]}"

  app_settings = {
    ROOT_APPENDER = "JSON_CONSOLE"
    REFORM_TEAM = "${var.product}"
    REFORM_SERVICE_NAME = "${var.microservice}"
    REFORM_ENVIRONMENT = "${var.env}"
  }
}
