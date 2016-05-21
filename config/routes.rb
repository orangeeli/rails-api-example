Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope '/api', defaults: {format: 'json'} do
    scope '/v1' do

      scope '/person' do
        get '/' => 'api/v1/person#index'
      end

    end
  end

end
