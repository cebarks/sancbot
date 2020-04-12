# frozen_string_literal: true

require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: ENV['SANCBOT_TOKEN'], prefix: 's.'

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.command :test do |event|
  "Hello, #{event.user.name}"
end

bot.run
