# terraform-webapp fullstack web-app

## Terraform init

**The terraform init command is used to initialize a working directory containing Terraform configuration files.**

- input=true Ask for input if necessary. If false, will error if input was required.

- **lock=false** Disable locking of state files during state-related operations.

- **lock-timeout=<duration>** Override the time Terraform will wait to acquire a state lock. The default is 0s (zero seconds), which causes immediate failure if the lock is already held by another process.

- **no-color** Disable color codes in the command output.

- **upgrade** Opt to upgrade modules and plugins as part of their respective installation steps. See the sections below for more details.

## Create an execution plan
**terraform plan**  - performs a refresh, unless explicitly disabled, and then determines what actions are necessary to achieve the desired state specified in the configuration files.

 **The list of available flags are:**

-  **destroy** - If set, generates a plan to destroy all the known resources.

-  **detailed-exitcode** - Return a detailed exit code when the command exits. When provided, this argument changes the exit codes and their meanings to provide more granular information about what the resulting plan contains:

    0 = Succeeded with empty diff (no changes)
    1 = Error
    2 = Succeeded with non-empty diff (changes present)
    -input=true - Ask for input for variables if not directly set.

-  **compact-warnings** - If Terraform produces any warnings that are not accompanied by errors, show them
-  **lock=true** - Lock the state file when locking is supported.

-  **lock-timeout=0s** - Duration to retry a state lock.

-  **no-color** - Disables output with coloring.

-  **out=path** - The path to save the generated execution plan. This plan can then be used with terraform apply to be certain that only the changes shown in this plan are applied. Read the warning on saved plans below.

-  **parallelism=n** - Limit the number of concurrent operation as Terraform walks the graph. Defaults to 10.

-  **refresh=true** - Update the state prior to checking for differences.

-  **state=path** - Path to the state file. Defaults to "terraform.tfstate". Ignored when remote state is used.

-  **target=resource** - A Resource Address to target. This flag can be used multiple times. See below for more information.

-  **var 'foo=bar'** - Set a variable in the Terraform configuration. This flag can be set multiple times. Variable values are interpreted as HCL, so list and map values can be specified via this flag.

-  **var-file=foo** - Set variables in the Terraform configuration from a variable file. If a terraform.tfvars or any .auto.tfvars files are present in the current directory, they will be automatically loaded. terraform.tfvars is loaded first and the .auto.tfvars files after in alphabetical order. Any files specified by 

-  **var-file** override any values set automatically from files in the working directory. This flag can be used multiple times.

## terraform apply
**The ***terraform apply** command is used to apply the changes required to reach the desired state of the configuration, or the pre-determined set of actions generated by a terraform plan execution plan.**
**scans the current directory for the configuration and applies the changes appropriately.**
 **The list of available flags are:**

 - **backup=path** - Path to the backup file. Defaults to -state-out with the ".backup" extension. Disabled by setting to "-".

- **compact-warnings** - If Terraform produces any warnings that are not accompanied by errors, show them in a more compact form that includes only the summary      messages.

- **lock=true** - Lock the state file when locking is supported.

- **lock-timeout=0s** - Duration to retry a state lock.

- **input=true** - Ask for input for variables if not directly set.

- **auto-approve** - Skip interactive approval of plan before applying.

- **no-color** - Disables output with coloring.

- **parallelism=n** - Limit the number of concurrent operation as Terraform walks the graph. Defaults to 10.

-  **refresh=true** - Update the state for each resource prior to planning and applying. This has no effect if a plan file is given directly to apply.

-  **state=path** - Path to the state file. Defaults to "terraform.tfstate". Ignored when remote state is used.

-  **state-out=path** - Path to write updated state file. By default, the -state path will be used. Ignored when remote state is used.

-  **target=resource** - A Resource Address to target. For more information, see the targeting docs from terraform plan.

-  **var 'foo=bar'** - Set a variable in the Terraform configuration. This flag can be set multiple times. Variable values are interpreted as HCL, so list and map values can be specified via this flag.

-  **v ar-file=foo** - Set variables in the Terraform configuration from a variable file. If a terraform.tfvars or any .auto.tfvars files are present in the current directory, they will be automatically loaded. terraform.tfvars is loaded first and the .auto.tfvars files after in alphabetical order. Any files specified by -var-file override any values set automatically from files in the working directory. This flag can be used multiple times.

# Terraform Commands (CLI) Documentation
*https://www.terraform.io/docs/commands/*

