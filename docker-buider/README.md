# Terraform Docker Image Customization

The current version of Terraform used in this build is version 1.  
In order to change/upgrade the version, you only need to change these 2 variables in the Dockerfile.
- ${TERRAFORM_VERSION}
- ${TERRAFORM_VERSION_SHA256SUM}

## The Terraform version and version checksum

It can be found on this link, choose your version accordingly.  
Choose the **_linux_amd64** release as our docker base image is a linux alpine.  
https://releases.hashicorp.com/terraform/

## Future maintenance

In the case that the download link for Terraform changes or what not, you can adjust these accordingly in the cloudbuild.yaml file.
