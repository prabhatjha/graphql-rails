module Types
  class EndUserType < Types::BaseObject



  	field :id, ID, null: false    
    field :email, String, null: true
    field :responses, [Types::ResponseType], null: true
    field :declines, [Types::DeclineType], null:true
  end
end
