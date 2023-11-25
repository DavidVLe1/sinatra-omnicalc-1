require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @the_num= params.fetch("number")
  @the_result= @the_num.to_f ** 2
  erb(:square_results)
end


get("/square_root/new") do
  erb(:square_root)
end
get("/square_root/results") do
  @the_num=params.fetch("number")
  @the_result= @the_num.to_f ** 0.5
  erb(:square_root_results)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @minimum=params.fetch("Minimum").to_f
  @maximum=params.fetch("Maximum").to_f
  @chosen_number=rand(@minimum..@maximum)
  erb(:random_results)
end

get("/payment/new") do
  erb(:payment)
end
