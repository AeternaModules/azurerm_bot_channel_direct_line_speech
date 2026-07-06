output "bot_channel_direct_line_speeches" {
  description = "All bot_channel_direct_line_speech resources"
  value       = azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches
  sensitive   = true
}
output "bot_channel_direct_line_speeches_bot_name" {
  description = "List of bot_name values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.bot_name]
}
output "bot_channel_direct_line_speeches_cognitive_account_id" {
  description = "List of cognitive_account_id values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.cognitive_account_id]
}
output "bot_channel_direct_line_speeches_cognitive_service_access_key" {
  description = "List of cognitive_service_access_key values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.cognitive_service_access_key]
  sensitive   = true
}
output "bot_channel_direct_line_speeches_cognitive_service_location" {
  description = "List of cognitive_service_location values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.cognitive_service_location]
}
output "bot_channel_direct_line_speeches_custom_speech_model_id" {
  description = "List of custom_speech_model_id values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.custom_speech_model_id]
}
output "bot_channel_direct_line_speeches_custom_voice_deployment_id" {
  description = "List of custom_voice_deployment_id values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.custom_voice_deployment_id]
}
output "bot_channel_direct_line_speeches_location" {
  description = "List of location values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.location]
}
output "bot_channel_direct_line_speeches_resource_group_name" {
  description = "List of resource_group_name values across all bot_channel_direct_line_speeches"
  value       = [for k, v in azurerm_bot_channel_direct_line_speech.bot_channel_direct_line_speeches : v.resource_group_name]
}

