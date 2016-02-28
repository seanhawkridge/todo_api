require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'models/item'
require_relative 'models/list'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/todo_#{ENV['RACK_ENV']}")
DataMapper.finalize
