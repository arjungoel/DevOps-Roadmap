Terraform has its own language called `Terraform Language` which is based on `HCL`. Every Terraform has it's own configuration file.


**TERRAFORM COMMANDS**:

1. `terraform init` -> It basically downloads the provider(s).

2. `terraform plan` -> It basically just gives you a dry run of what is going to happen when you are going to create your resources. `plan` doesn't do anything to AWS. All it does it gives you an overview of what it is going to do.

3. `terraform apply` -> It runs a plan first and then it asks you are you sure to perform those actions. It then creates a `terraform.tfstate` file.

4. `terraform destroy` -> It basically destroy all the resources.

> NOTE: The way terraform works is it stores state. Terraform needs to know what's created what's not.

> Note: If you didn't specify an "-out" parameter to save the plan, Terraform can't guarantee that exactly these actions will be performed if `terraform apply` is subsequently run

> Note: Terraform 0.13 and earlier allowed provider version constraints inside the provider configuration block, but that is now deprecated and will be removed in a future version of Terraform. To silence this warning, move the provider version constraint into the `required_providers` block.



###### Modifying Infrastructure with Terraform:


###### **How to use output from one resource into another**:

- All the resources from Terraform outputs a bunch of `optional attributes`.

- Terraform before it runs actually parses the file and it determines that it looks for things like `<resource>.<resource_name>.<exported_attribute>`, it looks to where you call other resources and it determines what needs
to be ran first.

- The order in which you specify things doesn't matter to Terraform as it is intelligent enough to figure out which block of resource needs to be created first. For readability purposes it is recommended to specify them in 
an order. Terraform knows about the dependencies of a resource.

- When you run `terraform apply` it is going to compile all of the files in a given directory.



###### **Input Variables in Terraform**:

- In Terraform you can pass variables to your configuration files making sure that it makes your configuration file more dynamic and adjustable to things like DEV or PROD Environments.

Ways of defining variables in TF:

1st way:

`
variable "<variable_name>" {
    type = string
    default = "t2.micro"
    description = 
}

`

and it will be accessed as `var.<variable_name>`


> NOTE: To use the Command-Line to pass in the variable is not considered as a good practice.

- You can create the terraform variables file with any name but `terraform.tfvars` is considered as a standard naming convention. `.tfvars` is the extension. The advantage of having variable file is it will be automatically
loaded.

- It's best practice to define variables inside of your main configuration. The best practice standard says to create a `variables.tf` file. This file will also be loaded automatically by terraform.


In short:

`variables.tf` -> It is the file where you define variables definition.
`terraform.tfvars` -> It is the file where you define values for your variables.


###### **Different ways of setting and using variables in TF**:

`terraform.tfvars` gets automatically loaded by terraform.


1st way: Suppose if we have a scenario where we are creating a separate tfvars file for DEV and PROD enviroments like `dev.tfvars` and `prod.tfvars`. Then we can run command as `terraform apply -var-file dev.tfvars`
It will run both the `dev.tfvars` and `terraform.tfvars` files.

2nd way: `terraform apply -var="my_instance_type=t2.large"`

3rd way: Through Environment variables: `TF_VAR_<PREFIX> terraform apply` --> `TF_VAR_my_instance_type="t2.large" terraform apply`


**Variable Definition Precedence** : https://www.terraform.io/docs/language/values/variables.html


###### **LOCAL VALUES**:

`Locals` in terraform are similar to `Variables` but variables are just used inside of your configuration or module. `Locals` are variables defined inside Functions.

Way to define locals in terraform:

locals {
...   // block-expression
}


To use local in terraform = `${local.<variable_name>}` - This is called string interpolation.
