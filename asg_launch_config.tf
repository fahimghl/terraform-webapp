resource "aws_launch_configuration" "for_webserver" {
  name            = "webserver-asg-lc"
  image_id        = data.aws_ami.ubuntu.id
  instance_type   = var.WEB_SERVER_INSTANCE_TYPE
  user_data       = file(var.USER_DATA_FOR_WEBSERVER)
  security_groups = [aws_security_group.webservers.id]
  key_name        = var.PEM_FILE_WEBSERVERS
  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }
}

resource "aws_launch_configuration" "for_appserver" {
  name          = "appserver-asg-lc"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.APP_SERVER_INSTANCE_TYPE
  user_data     = file(var.USER_DATA_FOR_APPSERVER)
  # TF-UPGRADE-TODO: In Terraform v0.10 and earlier, it was sometimes necessary to
  # force an interpolation expression to be interpreted as a list by wrapping it
  # in an extra set of list brackets. That form was supported for compatibility in
  # v0.11, but is no longer supported in Terraform v0.12.
  #
  # If the expression in the following list itself returns a list, remove the
  # brackets to avoid interpretation as a list of lists. If the expression
  # returns a single list item then leave it as-is and remove this TODO comment.
  security_groups = [aws_security_group.appservers.id]
  key_name        = var.PEM_FILE_APPSERVERS

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }
}

