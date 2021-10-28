output "project_id" {
  description = "Project id (depends on services)."
  value       = google_project.project.project_id
  depends_on  = [google_project_service.project_services]
}

output "name" {
  description = "Name (depends on services)."
  value       = google_project.project.name
  depends_on  = [google_project_service.project_services]
}

output "number" {
  description = "Project number (depends on services)."
  value       = google_project.project.number
  depends_on  = [google_project_service.project_services]
}