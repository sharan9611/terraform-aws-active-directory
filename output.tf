# outputs of workspaces directory
output "directory_id" {
  value = join("", aws_workspaces_directory.main.*.id)
}
//output "s" {
//  value = join("", aws_workspaces_directory.main.*.customer_user_name)
//}
