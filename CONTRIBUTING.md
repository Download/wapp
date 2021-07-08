# Contributing Guidelines

## Welcome!
Thank your for your interest in contributing to this project! We welcome
contributions from everyone. We ask that you follow these guidelines so that
the process will run smoothly and we can quickly merge your contributions into
the main line.

## Guidelines
> **Read this before you start work on your first contribution**

### Make an issue first
We ask that every contribution starts with an issue.
This allows us to look at your proposal before you do a lot of work on it and
will hopefully help to prevent conflicts and disappointment.

### Acceptance criteria
Our policy is that by default, contributions are accepted: **accept unless**.

We want people to contribute and we don't want people that are actually writing
code to be stopped by people that don't actually write any code.

However, we don't accept every contribution; it has to be in line with the
overall goals and philosophy of the project. That being said, your contribution
will not be stopped unless a well formulated objection to it is presented by
one of the other contributors in due time (2 weeks after the issue was opened),
at which point it will be discussed (max 1 week) and put to a vote. Other
contributors get 2 weeks to place a vote. Only if a majority of votes rejects
your proposal will your contribution be denied.

All people on the [Contributors](#contributors) list are allowed to vote,
except for the contributor making the proposal. When you get a single
contribution accepted, your name is added to the list.

## Contributors
These people have contributed to this project:

* [Stijn de Witt](https://stijndewitt.com) a.k.a. [Download](https://github.com/Download)

> If you are making your first pull request (PR), please add your name to this
> list. If you don't have a suitable webpage to link to, please use your
> GitHub profile page.

## Setting up your development environment
Follow these steps to set up a development environment that allows you to
develop on this project and make PRs.

### Fork this repo
Fork this repo to your own GitHub account so you can work on it as much as
you want without needing write access to this repo.

### Work in a branch
Always work in a branch. Commit all your work for a single feature or issue
to this one branch and *only* the work for this single feature or issue. Do
not combine multiple features or issues in one branch.

### Naming conventions
Because we always [Make an issue first](#make-an-issue-first), we always have
an issue number. We differentiate between 3 types of contributions:

#### Features
Please name your branch like `feat/123/description`, where `123` is the issue
number of the related issue and `description` is some memorable name.

#### Fixes
Please name your branch like `fix/123/description`, where `123` is the issue
number of the related issue and `description` is some memorable name.

#### Chores
Please name your branch like `chore/123/description`, where `123` is the issue
number of the related issue and `description` is some memorable name.

### Don't mess with versions
Don't change the project version number and don't update any dependencies.
These tasks will be performed separately as [chores](#chores). If you need to
add a library for your contribution to work, that's ok. Do note that we frown
upon extraneous use of libraries. Try to use as little dependencies as possible
and as small as possible. Less code means less surface area for bugs and
security vulnerabilities. If you need to update a dependency for your
contribution, create an issue for that seperately and resolve it with a chore.
After that has been merged into main you can pull and merge it into your PR.

### Commands
Use these commands to run, test and build the code.

#### `npm run dev`
Starts the development server.

#### `npm run build`
Builds the app for production.

#### `npm start`
Runs the built app in production mode.

### Make tests
TODO details

### Make a PR
TODO details

### Get a Review
TODO details

### Get some other contributor to merge it
As much as possible/practical, we don't merge our own PRs and we always do a
review. This follows the *two pairs of eyes* principle.
