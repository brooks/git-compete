# Code Challenge -- "Code Star"

The task is to build an app that lets a user to enter two people's github 
usernames. The app should use the github api to get a list of repositories for 
each user and order them by number of stars.

There should be a count of total stars for each user and a user should be 
declared a "winner".

## Features:

1. Enter two github usernames
2. List each account's repos in order of stars
3. Display total stars for each user
4. Display an average "stars per repo" for each user
5. Declare a winner
6. (optional) Toss in any other cool stats (you could even use them to help 
   determine a winner, just make note if you modify the win condition).
7. Tested code (Unit tests, Feature/integration tests, etc)

## Deliverables:

1. Archive of solution with any instructions for building/running (tar.gz, 
   tar.bz2, tar.xz, zip). A link to a GitHub repo works too.
2. Notes stating any assumptions made during the design and development.

## Rules & Time limit:

You have 24 hours to design and build the solution from when you are given the 
problem.  You may submit unit tests after your initial solution, just let me 
know if you intend to do that.

If you submit something and then wish you did something differently, had a new 
idea, added anything, etc... you may submit updated versions.  Just let me know 
what has changed.

If you have any questions you may ask me via email.  I will try my best to 
respond in a timely manner (during business hours).  If you decide to make an 
assumption without asking a question you must state that assumption in a README 
file included with your solution.

## Evaluation

I will be evaluating your solution on the following criteria:

* Completeness according to spec
* Code style
* Code quality
* Grasp of languages, frameworks, and libraries used.

## Useful Hints:

* Github API documentation - https://developer.github.com/v3/repos/

The github API doesn't need any kind of authentication (tokens, auth, etc) for 
this task. It returns JSON which angular (and js) handles great.

The API call you probably care about: 
https://api.github.com/users/:username/repos
