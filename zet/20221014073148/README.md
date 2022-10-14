# reasoning behind choices for tech stack - finding dependable and long lasting technology

- don't depend on a platform or technology forever - rwxrob and some of my own ideas
- platforms don't last forever
- libraries especially do not last forever
- languages don't remain useful forever
    - C is still around. has use cases. still wouldn't want to write an API call in it though.
- encoding schemes don't last forever, but standards do
    - MIME
    - who still *really uses* XML?
    - JSON
    - now YAML - easy to parse with awk at least
    - HTTP is plain text and now has to attach raw binary files to post request in the most awkward way imaginable - magic guid lines of text that delineate sections
- only constant is that there are files in directories that need to execute. they can be binaries or scripts or whatever.
    - don't even use bother sticking to a file extension - rwxrob
    - can change languages of individual pieces as project progresses or requirements change
    - can use appropriate language for job
- scripts in small linux containers are portable and will remain useful for a while

```
```

` zet/20221014073148/README.md `

# Related

- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten

Tags:

    #idea #stack #linux #bash
