variable "bot_channel_direct_line_speeches" {
  description = <<EOT
Map of bot_channel_direct_line_speeches, attributes below
Required:
    - bot_name
    - location
    - resource_group_name
Optional:
    - cognitive_account_id
    - cognitive_service_access_key
    - cognitive_service_access_key_key_vault_id (alternative to cognitive_service_access_key - read from Key Vault instead)
    - cognitive_service_access_key_key_vault_secret_name (alternative to cognitive_service_access_key - read from Key Vault instead)
    - cognitive_service_location
    - custom_speech_model_id
    - custom_voice_deployment_id
EOT

  type = map(object({
    bot_name                                           = string
    location                                           = string
    resource_group_name                                = string
    cognitive_account_id                               = optional(string)
    cognitive_service_access_key                       = optional(string)
    cognitive_service_access_key_key_vault_id          = optional(string)
    cognitive_service_access_key_key_vault_secret_name = optional(string)
    cognitive_service_location                         = optional(string)
    custom_speech_model_id                             = optional(string)
    custom_voice_deployment_id                         = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        length(v.bot_name) >= 4
      )
    ])
    error_message = "[from validate.BotName: invalid when len(value) < 4]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        length(v.bot_name) <= 42
      )
    ])
    error_message = "[from validate.BotName: invalid when len(value) > 42]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        v.cognitive_service_access_key == null || (length(v.cognitive_service_access_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        v.custom_speech_model_id == null || (length(v.custom_speech_model_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_direct_line_speeches : (
        v.custom_voice_deployment_id == null || (length(v.custom_voice_deployment_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

