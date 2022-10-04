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

