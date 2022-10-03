## writing GraphQL queries
look like functions - they return one or more items
queries can contain things like strings, but it's not JSON. JSON is returned by the API as the result of queries.
## writing GraphQL mutations
mutation is defined to reference fields in json passed in
```graphql
mutaiton CreateBlah($param: Thing) {
  paramField
}
```
```json
{ "param": "value" }
```
## example GraphQL queries from InsiderPHD video
```graphql
{
  # return hero's name and name of every friend
  hero {
    name
    friends {
      name
    }
  }
}
{
  human(id: 1000) {
    name
    height(Unit: FOOT)
  }
}
```

