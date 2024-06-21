#!/usr/bin/python3
"""
queries the Reddit API and returns the number of subscribers
"""

import requests


def number_of_subscribers(subreddit):
    """Return the total number of subscribers on a given subreddit."""
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    response = requests.get(url, allow_redirects=False)
    if response.status_code / 100 == 2:
        data = response.json()
        subscribers = data['data']['subscribers']
        return subscribers
    else:
        return 0
