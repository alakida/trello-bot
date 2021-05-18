# trello-bot

## Infrastructure
Infrastructure definition is stored using `Terraform` in [infra](./infra) directory

Following resources are created:
- Telegram Bot

    You have to first create your bot using Telegram's BotFather and obtain token to configure your bot.
    
    Following commands are used to apply the config changes:
    ```bash
    terraform init
    terraform apply -var="bot_token=<token of your bot>"
    ```
