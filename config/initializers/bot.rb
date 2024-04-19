=begin
  Bot.rb
=end

# Require the discordrb gem.
require 'discordrb'

# Initialize a ChannelID constant with the value of the ID in our discord server channel.
ChannelID = 1229539067130019870

# Initialize the bot with the discord token and client id from the config/credentials.yml.
Bot = Discordrb::Commands::CommandBot.new(
  token: Rails.application.credentials.dig(:discord, :token),
  client_id: Rails.application.credentials.dig(:discord, :client_id),
  prefix: "/"
)

# Tester 'Ping!' message for discord bot dm.
Bot.message(content: 'Ping!') do |event|
  event.respond 'Mesage Pong!'
end

# Tester '/ping' command for discord bot dm.
Bot.command(:ping) do |event|
  event.respond 'Command Pong!'
end

Bot.run(true)