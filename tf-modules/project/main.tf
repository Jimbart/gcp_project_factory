resource "google_project" "project" {
  folder_id           = var.parent_folder_id
  project_id          = var.project_idd
  name                = var.name
  billing_account     = var.billing_account_id
  auto_create_network = var.auto_create_network
}

resource "google_project_service" "project_services" {
  for_each                   = toset(var.activate_apis)
  project                    = google_project.project.project_id
  service                    = each.value
  disable_dependent_services = false
}

resource "google_project_iam_member" "owner" {
  for_each = toset(var.owners)
  project  = google_project.project.project_id
  role     = "roles/owner"
  member   = "user:${each.value}"
}

resource "google_project_iam_member" "editor" {
  for_each = toset(var.editors)
  project  = google_project.project.project_id
  role     = "roles/editor"
  member   = "user:${each.value}"
}
