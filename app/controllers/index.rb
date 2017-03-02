get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end
#GET lleva los datos de forma "visible" al cliente (navegador web). El medio de envío es la URL. Los datos los puede ver cualquiera.
# get '/abue' do
#   user_input = params[:user_input]
#   if user_input == user_input.downcase
#     @abuelita = "HUH? !NO TE ESCUCHO, HIJO!"
#   elsif user_input == user_input.upcase
#     if user_input != "¡BYE TQM!"
#       @abuelita = "NO, NO DESDE 1983"
#     else user_input == "BYE TQM"
#       @abuelita ="ADIOS HIJO"
#     end
#   end
  
#   erb :index
#   # Visita app/views/index.erb
# end

#POST consiste en datos "ocultos"
post '/abuelita' do
  user_input = params[:user_input]
  if user_input == user_input.downcase
    "HUH? !NO TE ESCUCHO, HIJO!"
  elsif user_input == user_input.upcase
    if user_input != "BYE TQM"
      "NO, NO DESDE 1983"
    else user_input == "BYE TQM"
      "ADIOS HIJO"
    end
  end
end

