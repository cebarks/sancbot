def pick_id_from_mention(mention)
  mention.gsub!('<','')
  mention.gsub!('@','')
  mention.gsub!('!','')
  mention.gsub!('>','')
end
