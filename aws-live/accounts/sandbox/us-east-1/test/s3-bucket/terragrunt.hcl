terraform {
    source = "git::ssh://git@github.com/benjamin-cloud-pi/terraform-aws-modules.git//modules/s3-bucket?ref=v1.0.0"
}

inputs = {
    project = "cloudtest"
    environment = "test"
    name    = "benjacloudaws"

    tags = {
        Owner   = "platform"
        ConstCenter = "shared"
    }

    force_destroy = false

    versioning_enabled  = true
    enable_secure_transport = true

    enable_lifecycle    = true
    lifecycle_transitions_to_ia_days = 30
    lifecycle_transitions_to_glacier_days = 90
    lifecycle_expiration_days = 365

    abort_incomplete_multipart_upload_days = 7

    # En caso que el modulo acepte kms_key_id y queres usar la key administrada aws/s3:
    kms_key_id = null
}