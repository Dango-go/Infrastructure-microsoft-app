variable "github_repo" {
    type = string
    default = "Dango-go/Infrastructure-microsoft-app" 
    description = "GitHub repository name in the format 'owner/repo' for which the service account will be used."
}
variable "project" {
    type = string
    default = "infrastructure-open-telemetry"
}
    
variable "region" {
    type = string
    default = "europe-central2"
}
