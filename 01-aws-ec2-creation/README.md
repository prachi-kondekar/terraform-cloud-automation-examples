# **Terraform Example: AWS EC2 Instance Creation**

This is an example of creating an AWS EC2 instance using Terraform. It includes reusable configurations defined in `main.tf`, `variables.tf`, and `outputs.tf` files.

---

## **Files and Their Purpose**

### 1. `main.tf`
This is the main configuration file:
- **Provider Definition**: Configures the AWS provider to specify the region and access credentials.
- **Resource**: Creates an EC2 instance using the `aws_instance` resource.
- **Outputs**: Displays the instance ID and public IP address after creation.

### 2. `variables.tf`
This file defines input variables for dynamic configuration:
- `aws_region`: The AWS region where the resources will be created.
- `ami_id`: The Amazon Machine Image (AMI) ID for the EC2 instance.
- `instance_type`: The type of the EC2 instance (e.g., `t2.micro`).
- `instance_name`: A tag name for the EC2 instance.

### 3. `outputs.tf`
This file defines the output values displayed after the instance is provisioned:
- `instance_id`: The unique ID of the created EC2 instance.
- `public_ip`: The public IP address assigned to the instance.

---


## **How to Use This Example**

### 1. **Install Terraform**
Ensure Terraform is installed on your system. You can download it from [Terraform's Official Website](https://www.terraform.io/downloads).

### 2. **Configure AWS Credentials**
Set up your AWS credentials using the AWS CLI or by creating a `~/.aws/credentials` file.

### 3. **Initialize Terraform**
Initialize the Terraform project to download the required provider plugins:
```bash
terraform init
```

### 4. **Plan the Infrastructure**
Preview the changes Terraform will make:
```bash
terraform plan
```

### 5. **Apply the Configuration**
Deploy the infrastructure:
```bash
terraform apply
```

### 6. **View the Outputs**
After applying the configuration, Terraform will display:
- The EC2 instance ID.
- The public IP address of the instance.

---

## **Expected Outputs**

When you run `terraform apply`, you should see:
```plaintext
Outputs:

instance_id = "i-0abcd1234efgh5678"
public_ip = "203.0.113.25"
```

---

## **Customization**

To customize the configuration:
1. Update `variables.tf` to change default values (e.g., `ami_id`, `instance_type`, etc.).
2. Modify `main.tf` to add more resources or update tags.

---

## **Cleanup**

To delete all the resources created by Terraform, run:
```bash
terraform destroy
```

---

## **Best Practices**

1. **Use Variables**: Keep configurations dynamic for better reusability.
2. **Organize Code**: Separate variables, resources, and outputs into respective files.
3. **Version Control**: Use Git to track changes in your Terraform configuration.
4. **Remote State Management**: Store the Terraform state file in a remote backend like AWS S3 for better collaboration.
5. **Secure Credentials**: Use environment variables or secret management tools to handle sensitive data like AWS keys.

---
