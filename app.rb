require "sinatra"
require "sinatra/reloader"

enable :sessions

get "/" do

  erb :index
end

post "/" do
  session[:num] = params[:num].to_i
  session[:pick] = params[:pick]
  session[:name] = params[:random]
  session[:name_normal] = params[:random]
  session[:name] = session[:name].split(",").shuffle


  if session[:pick] == "number"
     session[:radio1] = nil
     session[:radio] = "checked"


    session[:team] = Array.new


    session[:teams] = (session[:name].length.to_f / session[:num]).ceil

    session[:teams].times {|x| session[:team] << []}

    session[:name].each_with_index do |names,index|
    session[:team][index % session[:teams]] << names
  end
end


  if
    session[:pick] == "team"
    session[:radio] = nil
    session[:radio1] = "checked"
    session[:team] = Array.new

    session[:num].times {|x| session[:team] << []}

    session[:name].each_with_index do |name, index|
      session[:team][index % session[:num]] << name
    end
  end

  erb :index
end
