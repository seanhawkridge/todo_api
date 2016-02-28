
ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'JSON'
require_relative 'data_mapper_setup'

class TODO < Sinatra::Base

  get '/api' do
    content_type :json
    lists = List.all
    lists.to_json(methods: [:items])
  end

  post '/items/newitem' do
    current_list = List.get(2)
    p current_list
    current_list.items << Item.create(description: params[:description], due_date: params[:due_date], list: current_list)
    current_list.save
  end

  post '/lists/newlist' do
    List.create(name: params[:name])
  end

  post '/items/deleteitem' do
    item = Item.get(params[:current_item])
    item.destroy
  end

end
