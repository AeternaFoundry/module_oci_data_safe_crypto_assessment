variable "data_safe_crypto_assessments" {
  description = <<EOT
Map of data_safe_crypto_assessments, attributes below
Required:
    - crypto_assessment_id
Optional:
    - compartment_id
    - defined_tags
    - display_name
    - freeform_tags
    - is_assessment_scheduled
    - schedule
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    crypto_assessment_id    = string
    compartment_id          = optional(string)
    defined_tags            = optional(map(string))
    display_name            = optional(string)
    freeform_tags           = optional(map(string))
    is_assessment_scheduled = optional(bool)
    schedule                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

