## common GraphQL bugs
- same exact types of bugs as normal APIs
- IDORs
- busness logic errors
- possibility to enumerate internal API endpoints leads to plenty of information disclosure
- GraphQL specific bugs
  - usually require access to source code and review
  - insufficient type checks on values
  - switching object's types
  - NoSQL injection through JSON types "custom scalar types"
## GraphQL tools
- `GraphQL voyager` is a tool to visualize GraphQL using introspection
  - can see the queries and mutations that are defined for this database, provides query/mutation payloads
- GraphQL IDE
- Altair
- `InQL` burp add-on
- `GraphQLmap`
  - test for injections in data
- `graphql-path-enum` for finding paths A -> B (think like bloodhound)
## common specific GraphQL endpoints
- ql
- gql
- graphql
- graphiql
- graphql/console
look out for queries mentioning queries (q) and mutation
queries are usually URL encoded
## how GraphQL works
- implements graph structure in database
- reading and modifying, code written ahead of time
  - queries fetch data
  - mutations edit
  - fragments are lists of fields
  - metafields for inspection of query or mutation
- fragments are like classes of data with defined fields
  - a list of things to select that can be reused for different objects
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

