module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      desc 'Create a user'
      params do
        requires :name, type: String
      end
      post '/create' do
        User.create! name: permitted_params[:name]
      end

      desc 'Get a user'
      params do
        requires :id, type: Integer
      end
      post '/login' do
        User.find_by! id: permitted_params[:id]
      end

    end
  end
end
