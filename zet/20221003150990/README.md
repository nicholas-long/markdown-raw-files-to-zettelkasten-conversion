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

` zet/20221003150990/README.md `

# Related

- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas

- [20221003150998](/zet/20221003150998/README.md) GraphQL APIs
- ~/kb/hacking/methodology/API-enumeration.md

Tags:

    #hacking #api 
