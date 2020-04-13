# frozen_string_literal: true

puts "Loading bot..."

Bundler.require

require_relative 'util'

bot = Discordrb::Commands::CommandBot.new token: ENV['SANCBOT_TOKEN'], prefix: 's.'

counter = Hash.new(0)
# db = Database.new(ENV['SANCBOT_DEBUG'])

bot.command :ping do |event|
  event.respond 'Pong!'
end

bot.command :pry do |event|
  binding.pry
  nil
end

bot.command :pshame do |event, user|
  member = event.server.member(pick_id_from_mention(user))
  shame_role_id = 699230129758404648

  if member.role?(shame_role_id)
    member.remove_role(shame_role_id, "Public Shaming has ended.")
    p "Shaming has been enabled for #{member.mention}"
  else
    member.add_role(shame_role_id, "Public Shaming has started.")
    p "Shaming has been disabled for #{member.mention}"
  end
end

puts "Starting bot..."
bot.run
puts "Bot started!"
