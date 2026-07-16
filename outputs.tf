output "bot_channel_direct_line_speeches_id" {
  description = "Map of id values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bot_channel_direct_line_speeches_bot_name" {
  description = "Map of bot_name values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.bot_name if v.bot_name != null && length(v.bot_name) > 0 }
}
output "bot_channel_direct_line_speeches_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.cognitive_account_id if v.cognitive_account_id != null && length(v.cognitive_account_id) > 0 }
}
output "bot_channel_direct_line_speeches_cognitive_service_access_key" {
  description = "Map of cognitive_service_access_key values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.cognitive_service_access_key if v.cognitive_service_access_key != null && length(v.cognitive_service_access_key) > 0 }
  sensitive   = true
}
output "bot_channel_direct_line_speeches_cognitive_service_location" {
  description = "Map of cognitive_service_location values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.cognitive_service_location if v.cognitive_service_location != null && length(v.cognitive_service_location) > 0 }
}
output "bot_channel_direct_line_speeches_custom_speech_model_id" {
  description = "Map of custom_speech_model_id values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.custom_speech_model_id if v.custom_speech_model_id != null && length(v.custom_speech_model_id) > 0 }
}
output "bot_channel_direct_line_speeches_custom_voice_deployment_id" {
  description = "Map of custom_voice_deployment_id values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.custom_voice_deployment_id if v.custom_voice_deployment_id != null && length(v.custom_voice_deployment_id) > 0 }
}
output "bot_channel_direct_line_speeches_location" {
  description = "Map of location values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bot_channel_direct_line_speeches_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_direct_line_speeches, keyed the same as var.bot_channel_direct_line_speeches"
  value       = { for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

