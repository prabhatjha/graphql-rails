# graphql-rails
To get familiar with pros and cons of GraphQL and try out some new tech

- Uses rails 6 and ruby 2.6.4
- Uses SQLLite
- Seed the datbase `rake db:seed` . It creates 10 users with random email address using Faker gem and for the first user it creates couple of survey responses and declines. Each survey has a quantitative and qualitative data
- Start the server `rails s`
- Hit `graphiql` playground to try out the api at `http://localhost:3000/graphiql`

Samples queries:

```javascript
{
  endUsers
}
```

```javascript
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
```javascript
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
