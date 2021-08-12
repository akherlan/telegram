# Contain bot-command's functions

# Function for hello -----
start <- function(bot, update){
  bot$sendMessage(
    chat_id = update$message$chat_id,
    text = sprintf("Hello %s!", update$message$from$first_name)
  )
}

# Function for capitalization -----
caps <- function(bot, update, arg){
  if(length(arg > 0L)){
    text_caps <- toupper(paste(arg, collapse = " "))
    bot$sendMessage(
      chat_id = update$message$chat_id,
      text = text_caps
    )
  }
}

# If it's not a command, send the message(s) back -----
echo <- function(bot, update){
  bot$sendMessage(
    chat_id = update$message$chat_id, 
    text = update$message$text
  )
}

# Kill command for admin -----
kill <- function(bot, update){
  # Goodbye message
  bot$sendMessage(
    chat_id = update$message$chat_id,
    text = "Bot telah dimatikan, sampai jumpa..."
  )
  # Clean kill update
  bot$getUpdates(offset = update$update_id + 1L)
  # Stop the updater polling
  update$stop_polling()
}

# Another commands is unknown -----
unknown <- function(bot, update){
  bot$sendMessage(
    chat_id = update$message$chat_id,
    text = "Perintah tidak dimengerti."
  )
}

# cont. to handler