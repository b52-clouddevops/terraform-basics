module "frontend" {
    source      = "./ec2"
    COMPONENT   = "frontend"
    APP_VERSION = "0.0.1"
}

module "mongodb" {
    source      = "./ec2"
    COMPONENT   = "mongodb"
    APP_VERSION = "null"
}

module "catalogue" {
    source      = "./ec2"
    COMPONENT   = "catalogue"
    APP_VERSION = "0.0.9"
}

module "redis" {
    source      = "./ec2"
    COMPONENT   = "redis"
    APP_VERSION = "null"
}

module "user" {
    source      = "./ec2"
    COMPONENT   = "user"
    APP_VERSION = "0.0.9"
}

module "cart" {
    source      = "./ec2"
    COMPONENT   = "cart"
    APP_VERSION = "0.0.9"
}

module "mysql" {
    source      = "./ec2"
    COMPONENT   = "mysql"
    APP_VERSION = "null"
}

module "shipping" {
    source      = "./ec2"
    COMPONENT   = "shipping"
    APP_VERSION = "0.0.4"
}

module "rabbitmq" {
    source      = "./ec2"
    COMPONENT   = "rabbitmq"
    APP_VERSION = "0.0.9"
}

module "payment" {
    source      = "./ec2"
    COMPONENT   = "payment"
    APP_VERSION = "0.0.2"
}