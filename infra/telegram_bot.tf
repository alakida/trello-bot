variable "bot_token" {
  type = string
}

terraform {
  required_providers {
    telegram = {
      source  = "yi-jiayu/telegram"
      version = "0.2.1"
    }
  }
}

provider "telegram" {
  bot_token = var.bot_token
}

resource "telegram_bot_commands" "trello_bot" {
  commands = [
    {
      command     = "start",
      description = "Начните говорить с ботом"
    },
    {
      command     = "help",
      description = "Помощь"
    }
  ]
}
