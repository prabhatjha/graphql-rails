module Types
  class ResponseType < Types::BaseObject

  	field :score, Integer, null: true
    field :text, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null:true 
  end
end
