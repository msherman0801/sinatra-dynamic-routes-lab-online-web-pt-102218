require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num**2}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}" * num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    out = ""
    params.each do |k,v|
      out << " #{v}"
    end
    "#{out}."
  end

  get '/:operation/:number1/:number2' do 
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case op
    when "add"
      out = num1+num2
    when "subtract"
      out = num1-num2
    when "multiply"
      out = num1*num2
    when "divide"
      out = num1/num2
    end
    "#{out}"
  end

end