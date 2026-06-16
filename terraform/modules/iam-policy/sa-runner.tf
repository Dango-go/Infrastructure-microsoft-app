resource "google_service_account" "github_sa" {
  account_id   = "github-actions-sa"
  display_name = "SA for GitHub Actions"
}

resource "google_iam_workload_identity_pool" "pool" {
  workload_identity_pool_id = "github-runner-pull"
}

resource "google_iam_workload_identity_pool_provider" "provider" {
  workload_identity_pool_id    = google_iam_workload_identity_pool.pool.workload_identity_pool_id
  workload_identity_pool_provider_id = "github-provider"
  oidc {
    issuer_uri = "https://token.actions.githubusercontent.com"
  }
  attribute_mapping = {
    "google.subject" = "assertion.sub"
    "attribute.repository" = "assertion.repository"
  }
  attribute_condition = "assertion.repository == '${var.github_repo}'"
}

resource "google_service_account_iam_member" "identity_user" {
  service_account_id = google_service_account.github_sa.name  # sa id
  role               = "roles/iam.workloadIdentityUser" # role for assuming the service account   
  member             = "principalSet://iam.googleapis.com/${google_iam_workload_identity_pool.pool.name}/attribute.repository/${var.github_repo}"  # member (role + sa)
}

resource "google_project_iam_member" "artifact_registry_writer" {
  project = var.project
  role   = "roles/artifactregistry.writer"
  member  = "serviceAccount:${google_service_account.github_sa.email}"
}