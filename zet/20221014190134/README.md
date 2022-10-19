# kb file named kb/linux/deb-dependencies.md

- concept of `kb file named kb/linux/deb-dependencies.md`
- missing?

```
# Get all dependencies for package

apt-cache depends --recurse --no-recommends --no-suggests --no-conflicts --no-breaks --no-replaces --no-enhances bettercap | grep "^\w" | sort -u
# | xargs apt-get download 

# compress all packages into one tar archive
tar -czvf bettercap-pkg.tar *.deb

```

` zet/20221014190134/README.md `

# Related

- [20221019014416](/zet/20221019014416/README.md) enormous commit bigboi
- [20221018125400](/zet/20221018125400/README.md) bundle an apt package and all its dependencies in a tar to deploy
- [20221016233334](/zet/20221016233334/README.md) commits for day of 2022-03-11
- [20221016233427](/zet/20221016233427/README.md) commits for day of 2022-04-26
- [20221003151443](/zet/20221003151443/README.md) kb

Tags:

    #idea
