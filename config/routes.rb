Rails.application.routes.draw do
  root 'markets#how_to_use_marketapi'
  get 'markets/by_state/:id' => 'markets#by_state'
  get 'markets/by_city/:id' => 'markets#by_city'
  get 'market/:id' => 'markets#by_id'
  get 'market/:id/services' => 'markets#services'
end
