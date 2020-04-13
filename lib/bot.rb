# frozen_string_literal: true

require 'discordrb'
require_relative 'database'

bot = Discordrb::Commands::CommandBot.new token: ENV['SANCBOT_TOKEN'], prefix: 's.'

counter = Hash.new(0)
db = Database.new(ENV['SANCBOT_DEBUG'])

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.command :ping do |event|
  event.respond 'Pong!'
end

bot.command :pry do |event|
  binding.pry
  nil
end

bot.run
