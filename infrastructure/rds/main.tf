provider "aws" {
    profile=var.profile
    region = "us-east-1"
}

resource "aws_db_instance" "default" {
    allocate_storage=20
    storage_type="gp2"
    engine = "postgres"
    instance_class = "db.t2.micro"
    name = "contacts_db"
    username = "postgres"
    password = var.password
    identifier = var.id
    # vpc_security_groups_ids =[]
    publicly_accessible= true
}