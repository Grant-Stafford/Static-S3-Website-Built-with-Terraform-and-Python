# My Static Website

This project contains the Terraform configuration files required to deploy a static website to an S3 bucket on AWS.

## Files in This Project

- **`variables.tf`**: Defines the input variables for the Terraform configuration, such as the bucket name, region, and AWS credentials.

## Prerequisites

### 1. Install Required Tools
- **Terraform**: Install Terraform from [terraform.io](https://www.terraform.io/).
- **AWS CLI**: Install and configure the AWS CLI from [AWS CLI Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

### 2. Create an AWS IAM User
1. Log in to the [AWS Management Console](https://aws.amazon.com/console/).
2. Navigate to the **IAM** service.
3. Click **Users** > **Add Users**.
4. Enter a username (e.g., `terraform-user`).
5. Select **Programmatic access** as the access type.
6. Click **Next: Permissions** and attach the policy **AmazonS3FullAccess** (or a custom policy with appropriate permissions).
7. Complete the steps and download the **Access Key ID** and **Secret Access Key**.

### 3. Set AWS Credentials as Environment Variables
For security, avoid hardcoding AWS credentials in your Terraform files. Instead, set them as environment variables:

#### On Linux/MacOS:
```bash
export AWS_ACCESS_KEY_ID=<YOUR_ACCESS_KEY>
export AWS_SECRET_ACCESS_KEY=<YOUR_SECRET_KEY>
```

#### On Windows (Command Prompt):
```cmd
set AWS_ACCESS_KEY_ID=<YOUR_ACCESS_KEY>
set AWS_SECRET_ACCESS_KEY=<YOUR_SECRET_KEY>
```

#### On Windows (PowerShell):
```powershell
$env:AWS_ACCESS_KEY_ID="<YOUR_ACCESS_KEY>"
$env:AWS_SECRET_ACCESS_KEY="<YOUR_SECRET_KEY>"
```

To make these changes persistent, add them to your shell's profile file (e.g., `.bashrc`, `.zshrc`, or PowerShell profile).

## Usage

1. Clone this repository to your local machine:
   ```bash
   git clone <repository-url>
   cd My-Static-Website
   ```

2. Update the `variables.tf` file with your AWS details:
   - Replace `<YOUR_BUCKET_NAME>` with your desired S3 bucket name.
   - Replace `<YOUR_REGION>` with your AWS region (e.g., `us-east-1`).

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Plan the infrastructure:
   ```bash
   terraform plan
   ```

5. Apply the configuration to create the resources:
   ```bash
   terraform apply
   ```

6. Confirm the deployment by visiting the S3 bucket's static website endpoint.

## Notes

- Ensure your AWS credentials are kept secure and not shared publicly.
- The `sensitive` attribute in `variables.tf` ensures that sensitive data like access keys and secret keys are not displayed in logs.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
