data "azurerm_key_vault_secret" "cognitive_service_access_key" {
  for_each     = { for k, v in var.bot_channel_direct_line_speeches : k => v if v.cognitive_service_access_key_key_vault_id != null && v.cognitive_service_access_key_key_vault_secret_name != null }
  name         = each.value.cognitive_service_access_key_key_vault_secret_name
  key_vault_id = each.value.cognitive_service_access_key_key_vault_id
}
resource "azurerm_bot_channel_direct_line_speech" "bot_channel_direct_line_speeches" {
  for_each = var.bot_channel_direct_line_speeches

  bot_name                     = each.value.bot_name
  location                     = each.value.location
  resource_group_name          = each.value.resource_group_name
  cognitive_account_id         = each.value.cognitive_account_id
  cognitive_service_access_key = each.value.cognitive_service_access_key != null ? each.value.cognitive_service_access_key : try(data.azurerm_key_vault_secret.cognitive_service_access_key[each.key].value, null)
  cognitive_service_location   = each.value.cognitive_service_location
  custom_speech_model_id       = each.value.custom_speech_model_id
  custom_voice_deployment_id   = each.value.custom_voice_deployment_id
}

