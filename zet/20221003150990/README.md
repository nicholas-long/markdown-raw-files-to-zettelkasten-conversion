# GraphQL APIs example GraphQL queries from InsiderPHD video
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

# References
- [20221003150998](/zet/20221003150998/README.md) GraphQL APIs
- ~/kb/hacking/methodology/API-enumeration.md

Tags:
    #assorted #hacking #API
