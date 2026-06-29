terraform {
     source = "git::ssh://git@github.com/benjamin-cloud-pi/terraform-aws-modules.git//modules/s3-bucket?ref=v1.0.1"
    # source = "/mnt/c/Users/BenjaminCastillo/Desktop/aws-well/modules/s3-bucket"
}

inputs = {
    project = "cloudtest"
    environment = "test"
    name    = "benjacloudaws"

    tags = {
        Owner = "platform"
        CostCenter = "shared"
    }

    force_destroy = false

    versioning_enabled  = true
    enable_secure_transport = true

    enable_lifecycle = true

    lifecycle_transition_to_ia_days = 30
    lifecycle_transition_to_glacier_days = 90

    # Recomendado para evitar borrando de forma automatica objetos
    lifecycle_expiration_days = null
    
}