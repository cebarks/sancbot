# frozen_string_literal: true

require 'discordrb'
require_relative 'database'

bot = Discordrb::Commands::CommandBot.new token: ENV['SANCBOT_TOKEN'], prefix: 's.'

counter = Hash.new(0)
db = Database.new(debug: true)

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.message do |event|
  # binding.pry
  counter[event.user.name] += 1 unless event.message.content.include?('s.')
end

bot.command :test do |event|
  event << "Hello, #{event.user.name}."
  counter.each do |k, v|
    event << "#{k} - #{v}"
  end
end

bot.run
