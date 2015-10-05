### JPL / Pathfinder Communication Link Challenge

My quick and dirty solution to this challenge: http://practicalsqa.net/selenium-challenge-reach-the-pathfinder/

Well actually 2 solutions that I quickly threw together earlier today.

#### Solution 1
There is an MD5 hash in the JS on the page that combination of 3 button presses is validated against. It's pretty straight forward to run through permutations of all of the combinations and compare resulting hash with hash that's on the page.

To find the combination of buttons to press with that method do the following:

```
clone the repo
bundle install
ruby hash_buster.rb
```

#### Solution 2
But I guess that wasn't really part of the challenge as it required to use Selenium to find the combination. I ended up using rspec, page-objects and watir-webdriver

To find the combination of buttons to press with that method do the following:

```
clone the repo
bundle install
rspec
```

P.S. I didn't have patience to run through all 24360 permutations of buttons in the browser. I only used subset of those, but entire data set should work just fine.
