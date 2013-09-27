require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'

require_relative 'lib/twitter'

get '/' do
  @name = 'Bo'
  @show_description = false

  erb :hello
end

post '/twitter' do
  @tweets = Twitter::Tweet.give_me_tweets(20)
  @first = params[:first]
  @second = params[:second]

  erb :twitter_results
end

