require 'faraday'
require 'faraday_middleware'

module BeerMapping
  class Resource
    def initialize(config)
      @config = config
    end

    def get(path, params={})
      Request.new(connection, path, params).response
    end
    private :get

    def connection
      Faraday.new(request: { timeout: @config.timeout }) do |builder|
        builder.url_prefix = @config.base_uri
        builder.headers[:user_agent] = @config.user_agent
        builder.params[:key] = @config.api_key

        builder.use(Middleware::ErrorHandler)
        builder.response(:mashify, mash_class: Mash)
        builder.response(:json, content_type: /\bjson$/)

        builder.adapter(@config.adapter)
      end
    end
    private :connection
  end
end
