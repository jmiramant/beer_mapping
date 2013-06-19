require "beer_mapping/version"

module BeerMapping
	Error = Class.new(StandardError)
  BadRequest = Class.new(Error)
  NotFound = Class.new(Error)
  RateLimitExceeded = Class.new(Error)
  Unauthorized = Class.new(Error)

  autoload :Client, 'beer_mapping/client'
  autoload :Collection, 'beer_mapping/collection'
  autoload :Config, 'beer_mapping/config'
  autoload :Mash, 'beer_mapping/mash'
  autoload :Request, 'beer_mapping/request'

  module Middleware
    autoload :ErrorHandler, 'beer_mapping/middleware/error_handler'
  end

  module Resource
    autoload :Locquery, 'beer_mapping/resources/locquery'
    autoload :Loccity, 'beer_mapping/resources/loccity'
    autoload :Locstate, 'beer_mapping/resources/locstate'
    autoload :Locmap, 'beer_mapping/resources/locmap'
    autoload :Locscore, 'beer_mapping/resources/locscore'
    autoload :Locimage, 'beer_mapping/resources/locimage'
  end

end