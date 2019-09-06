# graphql-rails
To get familiar with pros and cons of GraphQL and try out some new tech

- Uses rails 6 and ruby 2.6.4
- Uses SQLLite
- Seed the datbase `rake db:seed` . It creates 10 users with random email address using Faker gem and for the first user it creates couple of responses and declines.
- Start the server `rails s`
- Hit `graphiql` playground to try out the api at `http://localhost:3000/graphiql`

Samples queries:

```json
{
  endUsers
}
```

```json
{
  endUsers {
    email
    responses {
      score
      text
      createdAt
    }
  }
}
```
```json
{
  endUser(id: 1) {
    email
    responses {
      score
      text
      createdAt
    }
  }
}
```
