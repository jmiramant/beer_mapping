module BeerMapping
	class LocScore < Location
		def all(params={})
			get('locations', params).collection
		end

		def find(id, params={})
			get('location/%s' % id, params).data
		end
	end
end
