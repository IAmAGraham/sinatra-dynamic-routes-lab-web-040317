require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number]
    (number.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    say_phrase_string = ""
    (params[:number].to_i).times do
      say_phrase_string += "#{params[:phrase]}\n"
    end
    say_phrase_string

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    case @operation
      when 'add'
        "#{params[:number1].to_i + params[:number2]}"
      when 'subtract'
        "#{params[:number1].to_i - params[:number2]}"
      when 'multiply'
        "#{params[:number1].to_i * params[:number2]}"
      when 'divide'
        "#{params[:number1].to_i / params[:number2]}"
      end
    end


end


#
# Create a dynamic route at get '/reversename/:name'
# that accepts a name and renders the name backwards.
#
# Create a dynamic route at get '/square/:number'
# that accepts a number and returns the square of that number.
# Note: Remember that values in params always come in as strings,
# and your return value for the route should also be a string (use .to_i and .to_s).
#
# Create a dynamic route at get '/say/:number/:phrase' t
# hat accepts a number and a phrase and
# returns that phrase in a string the number of times given.
#
# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5'
# that accepts five words and returns a string with them formatted as a sentence.
#
# Create a dynamic route at get '/:operation/:number1/:number2'
# that accepts an operation (add, subtract, multiply or divide)
# and performs the operation on the two numbers provided.
# For example, going to /add/1/2 should render 3.
