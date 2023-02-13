# map Variable
variable "COMPONETS" {
    default = {
        mongodb = {
            APP_VERSION = "null"
        },
        catalogue = {
            APP_VERSION = "0.0.9"
        },
        redis = {
            APP_VERSION = "null"
        },
        user = {
            APP_VERSION = "0.0.9"
        },
        cart = {
            APP_VERSION = "0.0.9"
        },
        mysql = {
            APP_VERSION = "null"
        },
        shipping = {
            APP_VERSION = "0.0.4"
        },
        rabbitmq = {
            APP_VERSION = "null"
        },
        payment = {
            APP_VERSION = "0.0.2"
        },
        frontend = {
            APP_VERSION = "0.0.1"
        }
    }
}