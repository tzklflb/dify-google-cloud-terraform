output "dify_service_name" {
  value = google_cloud_run_v2_service.dify_service.name
}

output "dify_sandbox_url" {
  value = google_cloud_run_v2_service.dify_sandbox.uri
}

output "dify_service_url" {
  value = google_cloud_run_v2_service.dify_service.uri
}

output "dify_service_account_email" {
  value = google_service_account.dify_service_account.email
}
