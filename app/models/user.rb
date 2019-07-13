# require 'elasticsearch/model'
class User < ActiveRecord::Base


# include Elasticsearch::Model
#  include Elasticsearch::Model::Callbacks

#  def self.search(query)
#  __elasticsearch__.search(
#   {
#    query: {
#     multi_match: {
#      query: query,
#      fields: ['name^10', body]
#     }
#    }
#   }
#  )
# end


end

# settings index: { number_of_shards: 1 } do
#  mappings dynamic: 'false' do
#   indexes :name, analyzer: 'english'
#  end
# end

# User.import(force: true)