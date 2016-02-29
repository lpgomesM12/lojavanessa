Rails.application.routes.draw do
  get 'site/index'
  get 'home/index'

  resources :exemplaresprodutos
  resources :produtos
  resources :cors
  
  resources :categoriaprodutos
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'site#index'

   match '/salvaexemplares', to: 'exemplaresprodutos#salva_exemplares', via: 'get'
   match '/carregaexemplares', to: 'exemplaresprodutos#carrega_exemplares', via: 'get'
   match '/excluiexemplare', to: 'exemplaresprodutos#exclui_exemplares', via: 'get'
   match '/buscaexemplar', to: 'exemplaresprodutos#busca_exemplar', via: 'get'
   match '/editarexemplar', to: 'exemplaresprodutos#editar_exemplar', via: 'get'
   get '/show_produto/:id', to: 'site#show_produto', as: 'show_produto'


end
