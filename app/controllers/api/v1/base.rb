require 'grape-swagger'
require 'appsignal/integrations/grape'

module API
  module V1
    class Base < Grape::API::Instance
      insert_before Grape::Middleware::Error, Appsignal::Grape::Middleware

      version 'v1', using: :path
      prefix :api
      format :json

      mount API::V1::Users

      add_swagger_documentation(
        api_version: "v1",
        hide_documentation_path: true,
        mount_path: "/api/v1/swagger_doc",
        hide_format: true
      )
    end
  end
end
