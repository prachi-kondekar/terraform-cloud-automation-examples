# **Terraform Basics: A Quick Reference Guide**

Welcome to the **Terraform Basics** repository! This guide provides an overview of Terraform's core concepts, commands, examples, and best practices to help you get started with Infrastructure as Code (IaC).

---

## **What is Terraform?**

Terraform is an open-source **Infrastructure as Code (IaC)** tool developed by HashiCorp. It allows you to define, deploy, and manage cloud infrastructure in a declarative manner.


## **Core Concepts**

### 1. **Providers**
- **Definition**: Plugins to interact with cloud platforms and services.
- **Example**:
  ```hcl
  provider "aws" {
    region = "us-east-1"
  }
  ```

### 2. **Resources**
- **Definition**: Represents infrastructure components like servers, databases, and networks.
- **Example**:
  ```hcl
  resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
  }
  ```

### 3. **Variables**
- **Definition**: Makes configurations dynamic and reusable.
- **Example**:
  ```hcl
  variable "region" {
    default = "us-east-1"
  }
  ```

### 4. **State**
- Tracks the real-world state of your infrastructure (`terraform.tfstate`).

### 5. **Modules**
- Groups of reusable Terraform code.

### 6. **Outputs**
- Displays useful information after infrastructure deployment.
- **Example**:
  ```hcl
  output "instance_id" {
    value = aws_instance.example.id
  }
  ```

---

## **Basic Commands**

| **Command**              | **Description**                                                      |
|--------------------------|----------------------------------------------------------------------|
| `terraform init`         | Initializes the working directory and downloads provider plugins.   |
| `terraform validate`     | Validates the syntax of configuration files.                        |
| `terraform plan`         | Previews the changes Terraform will make.                           |
| `terraform apply`        | Builds or modifies infrastructure as per the configuration.         |
| `terraform destroy`      | Deletes all resources defined in the configuration.                 |

---

## **File Structure**

Typical Terraform project file structure:
```
project-folder/
│
├── main.tf         # Main configuration file
├── variables.tf    # Variable definitions
├── outputs.tf      # Output definitions
└── terraform.tfstate # State file (auto-generated)
```

---

## **Example Configuration**

### Create an AWS EC2 Instance
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}
```

### Usage:
1. **Initialize Terraform**:
   ```bash
   terraform init
   ```
2. **Plan Infrastructure**:
   ```bash
   terraform plan
   ```
3. **Apply Changes**:
   ```bash
   terraform apply
   ```

---

## **Best Practices**

1. **Use Variables**: Keep configurations dynamic and reusable.
2. **Organize Code**: Separate variables, resources, and outputs into separate files.
3. **Use Version Control**: Track changes in code using Git.
4. **Remote State Management**: Store state files remotely (e.g., AWS S3) for better collaboration.
5. **Avoid Hardcoding**: Use `terraform.tfvars` or environment variables for sensitive data.
6. **Modules**: Break down infrastructure into reusable modules.
7. **Back Up State Files**: Always secure your `terraform.tfstate` file.

---

## **Learning Resources**

- [Terraform Official Documentation](https://www.terraform.io/docs)
- [Terraform Tutorials on HashiCorp Learn](https://learn.hashicorp.com/terraform)

---

Feel free to fork this repository, contribute by adding new templates, or create issues for improvements!
```
