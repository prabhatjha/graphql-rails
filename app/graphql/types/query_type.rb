module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.



    field :end_users, [Types::EndUserType], null: false

    def end_users
      EndUser.all
    end

    field :end_user, Types::EndUserType, null: false do
      argument :id, ID, required: true
    end

    def end_user (id:)
      EndUser.find(id)
    end


    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end
  end
end
