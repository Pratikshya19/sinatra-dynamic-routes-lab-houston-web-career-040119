require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
   @square = params[:number].to_i * params[:number].to_i
   "#{@square}"
end

get '/say/:number/:phrase' do
 
@number = params[:number].to_i
@phrase = params[:phrase]
"#{@phrase}" * @number

end

get '/say/:word1/:word2/:word3/:word4/:word5' do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operate/:number1/:number2' do
  x = params[:operate] # => "add"
  if x == "add"
  @sum = params[:number1].to_i + params[:number2].to_i
  "#{@sum}"
  elsif x == "subtract"
  @subtract = params[:number2].to_i - params[:number1].to_i
  "#{@subtract}"
  elsif x == "multiply"
    @multiply = params[:number1].to_i * params[:number2].to_i
    "#{@multiply}"
  else 
    x == "divide"
      @divide = params[:number1].to_i / params[:number2].to_i
      "#{@divide}"

    end
end

end

