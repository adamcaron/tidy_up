[![Stories in Ready](https://badge.waffle.io/adamcaron/tidy_up.svg?label=ready&title=Ready)](https://waffle.io/adamcaron/tidy_up) [![Code Climate](https://codeclimate.com/github/adamcaron/tidy_up/badges/gpa.svg)](https://codeclimate.com/github/adamcaron/tidy_up)](https://codeclimate.com/github/adamcaron/tidy_up/) [![Build Status](https://travis-ci.org/adamcaron/tidy_up.svg)](https://travis-ci.org/adamcaron/tidy_up) [![Code Climate](https://codeclimate.com/github/adamcaron/tidy_up/badges/gpa.svg)](https://codeclimate.com/github/adamcaron/tidy_up)

# Tidy Up
This is an app to make it easier for Turing School students to complete cleanup duties.

As of now (Aug-7-2015) we have a list of posse cleanup duties but there's not way to keep track of which tasks have been completed and which tasks have not. Having a checklist would communicate posse cleanup duty progress. Throughout the week, posse members can see how close they are to completing the list of cleanup duties,
 - which makes it easier for posse members to do cleanup
 - which makes it more likely that people will complete the cleanup chores
 - making the Turing space more enjoyabe to be in,
 - making people happier and more productive.

At the end of each week, completion statistics get recorded/documented and sent to staff. Then, a fresh list becomes available for the next posse.

Statistics may indicate patterns of certain duties that never get completed by any posses, which may create insights about barriers, roadblocks, or hindrances to completing certain tasks.

## Project Workflow

- **Workflow**
  - checkout a branch named after the waffle story and include the number
    - example: `2-admin-can-create-meals`
  - use Rubocop locally
  - Squash and order commits by specs
  - Push branch and tag with [WIP] until story is completed
  - Submit pull request
    - Close the waffle issue on GitHub
    - Notify group members on Slack when PR is ready for code review
      - *Aim to* have the PR reviewed as soon as possible
      - Fix eventual Hound errors before merging the PR
  - The group member that merges the PR should
    - delete the branch on GitHub
    - notify the group members on Slack to pull from master

- **Tools**
  - [waffle](https://waffle.io/adamcaron/tidy_up)
  - [travis](https://travis-ci.org/adamcaron/tidy_up/)
  - hound (rubocop locally to test before PR)
  - [code climate](https://travis-ci.org/adamcaron/tidy_up/)