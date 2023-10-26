module API
  class Base < Grape::API::Instance
    mount API::V1::Base
  end
end
