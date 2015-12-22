Rails.application.routes.draw do

root to: 'photos#index'

get '/soulcycle' => 'photos#soulcycle'
get '/founders' => 'photos#founders'
get '/instructors' => 'photos#instructors'

end
