This is a Terraform project which shows how to deploy a static website using AWS S3, CloudFront, and Terraform. We will also serve it through a domain registered in Route 53. 

# Getting started

1. rename the file `terraform.tfvars.sample` to `terraform.tfvars` 

2. Modify the values in the file to match your project. 

3. Run the terraform commands. 

The full step-by-step guide on how the project is available at [blog.cntechy.com](https://blog.cntechy.com/how-to-deploy-your-static-site-with-terraform-s3-and-cloudfront)

# Final Result

The static files will be served through your domain and cached by CloudFront.

If you visit the Network tab in the Developer Tools, you should see a Hit from cloudfront  value in the X-cache header. This means that your website was served by CloudFront cache. 

![Deployed Website](./images/deployed%20website.png)
