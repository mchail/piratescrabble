require 'sinatra'
require './src/piratescrabble'

get '/' do
	'hello'
end

get '/make-from' do
	word = params[:word]

	content_type :json
	MakeFrom.new(word).suggestions
end

get '/can-become' do
	word = params[:word]

	content_type :json
	CanBecome.new(word).suggestions
end

get '/is-word' do
	word = params[:word]

	content_type :json
	{
		isWord: IsWord.new(word)
	}
end
