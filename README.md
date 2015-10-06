# LACMTA / gtfs_bus
This will be the new home for Metro's bus-only GTFS.

Official releases and notes will be archived here:
  [https://github.com/LACMTA/gtfs_bus/releases/tag/DP1](https://github.com/LACMTA/gtfs_bus/releases/tag/DP1)

The evergreen link for our official releases will be:
  [https://github.com/LACMTA/gtfs_bus/archive/master.zip](https://github.com/LACMTA/gtfs_bus/archive/master.zip)

You may not want to monitor this site for the latest changes. To get the latest commit (or version) from the Github API:
  [https://api.github.com/repos/LACMTA/gtfs_bus/git/refs/heads/master](https://api.github.com/repos/LACMTA/gtfs_bus/git/refs/heads/master)

This returns:

    {
    "ref": "refs/heads/master",
    "url": "https://api.github.com/repos/LACMTA/gtfs_bus/git/refs/heads/master",
    "object": {
      "sha": "6676ac465a5c36c8b771787e1a6be7bf5aec0935",
      "type": "commit",
      "url": "https://api.github.com/repos/LACMTA/gtfs_bus/git/commits/6676ac465a5c36c8b771787e1a6be7bf5aec0935"
      }
    }

The commit hash (or sha) is unique and serves as an indicator of changes to the archive.

use [jq](https://stedolan.github.io/jq/) to parse out the commmit hash:

    $ curl -s https://api.github.com/repos/LACMTA/gtfs_bus/git/refs/heads/master | jq '.object.sha'
    "6676ac465a5c36c8b771787e1a6be7bf5aec0935"
