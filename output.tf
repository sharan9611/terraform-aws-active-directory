output "directory_name" {
  value       = join("", aws_directory_service_directory.main.*.name)
  description = "directory name."
}
output "id" {
  value       = module.ad.directory_id
  description = "directory name."
}
output "name" {
  value       = module.ad.directory_name
  description = "directory name."
}