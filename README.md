# terraform-webapp fullstack web-app

## Create an execution plan
* **terraform plan**  - performs a refresh, unless explicitly disabled, and then determines what actions are necessary to achieve the desired state specified in the configuration files.

 **The list of available flags are:**

- destroy - If set, generates a plan to destroy all the known resources.

- detailed-exitcode - Return a detailed exit code when the command exits. When provided, this argument changes the exit codes and their meanings to provide more granular information about what the resulting plan contains:

    0 = Succeeded with empty diff (no changes)
    1 = Error
    2 = Succeeded with non-empty diff (changes present)
    -input=true - Ask for input for variables if not directly set.

- compact-warnings - If Terraform produces any warnings that are not accompanied by errors, show them
- lock=true - Lock the state file when locking is supported.

- lock-timeout=0s - Duration to retry a state lock.

- no-color - Disables output with coloring.

- out=path - The path to save the generated execution plan. This plan can then be used with terraform apply to be certain that only the changes shown in this plan are applied. Read the warning on saved plans below.

- parallelism=n - Limit the number of concurrent operation as Terraform walks the graph. Defaults to 10.

- refresh=true - Update the state prior to checking for differences.

- state=path - Path to the state file. Defaults to "terraform.tfstate". Ignored when remote state is used.

- target=resource - A Resource Address to target. This flag can be used multiple times. See below for more information.

- var 'foo=bar' - Set a variable in the Terraform configuration. This flag can be set multiple times. Variable values are interpreted as HCL, so list and map    values can be specified via this flag.

- var-file=foo - Set variables in the Terraform configuration from a variable file. If a terraform.tfvars or any .auto.tfvars files are present in the current directory, they will be automatically loaded. terraform.tfvars is loaded first and the .auto.tfvars files after in alphabetical order. Any files specified by 

- var-file override any values set automatically from files in the working directory. This flag can be used multiple times.