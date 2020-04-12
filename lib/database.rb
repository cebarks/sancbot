require 'sequel'

class Database
  def initialize(debug)
    if debug
      db = Sequel.sqlite "./sancbot.db"
    else
      db = Sequel.postgres
    end
  end
end
