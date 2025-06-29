variable "docker_image" {
  description = "The Docker image to deploy"
  type        = string
  default     = "cuongopswat/devops-training"
}

variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1"
}

variable "postgres_port" {
  description = "Port for PostgreSQL"
  type        = number
  default     = 5432
}

variable "rabbitmq_port" {
  description = "Port for RabbitMQ"
  type        = number
  default     = 5672
}

variable "proxy_port" {
  description = "Port for Proxy service"
  type        = number
  default     = 5000
}

variable "product_port" {
  description = "Port for Product service"
  type        = number
  default     = 5001
}

variable "counter_port" {
  description = "Port for Counter service"
  type        = number
  default     = 5002
}

variable "web_port" {
  description = "Port for Web service"
  type        = number
  default     = 8888
}