
# Manila management system

This project will help Manila Reserve users and adminitrators to manage its data: reservations, payments, user types, income analysis.

## Requirements

To run this project you need to install the following:

* PostgreSQL
* Node.js ([instructions](https://github.com/makeitrealcamp/node-installation))
* Yarn ([instructions](https://yarnpkg.com/en/docs/install))

## Setup

1. Clone the project from Git:

    ```
    $ git clone https://github.com/Daguilar94/manila-reserve.git
    ```

2. Install the Ruby dependencies with:

    ```
    $ bundle
    ```

3. And the JavaScript dependencies with:

    ```
    $ yarn install
    ```

4. Create a file `config/application.yml` with the following content:

    ```
    AWS_ACCESS_KEY_ID: AKIAJI7J6PNYB52V32NQ
    AWS_SECRET_ACCESS_KEY:     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
    AWS_REGION: us-east-1
    S3_BUCKET_NAME: thy-dev
    HOSTNAME: lvh.me:3000
    ```

5. Create the database and run the migrations by executing:

    ```
    $ rails db:create
    $ rails db:schema:load
    $ rails db:seed
    ```

## Contributing

The workflow for contributing to this project is the following:

**1. Identify an issue you want to work on**

Checkout our [Trello board]() to identify the issues that are ready for work (they are ordered by priority). Once you have selected one, assign it to yourself (you can`t have more than **two** issues assigned to you at the same time).

**2. Create a branch**

```
$ git checkout master
$ git pull
$ git checkout -b xx-short-description
```

The name of the branch should start with the number of the issue, followed by max three keywords that describe the issue (e.g. `23-fix-homepage`, `56-change-font`, etc.).

**3. Work on the branch**

Commit often and try to create small commits, just be sure that the tests are passing before commiting. Rebase against the upstream frequently to prevent your branch from diverging significantly:

```
$ git fetch origin
$ git rebase origin/master
```

To execute tests run the following commands:

```
$ rails test
$ rails test:system
```

Once you finish, you can push the branch and initiate a pull request.

**Note:** remember that an issue is not finished until it's fully tested!

**4. Push the branch and initiate the pull request**

When you are done, and you have organized your commits locally, it's time to push the branch.

```
$ git push -u origin xx-short-description
```

Open a pull request (PR) on Github.

### Writing good commit messages

A commit message has a first line, a blank line and an optional body. For example (taken from the Rails repository):

```
Make flash messages cookie compatible with Rails 4

In #xxx we removed the discard key from the session hash used to flash
messages and that broke compatibility with Rails 4 applications because they
try to map in the discarded flash messages and it returns nil.

Fixes #xxx.
```

Notice that the first line and the body are capitalized. The first line should be 50 characters or less and should start with a verb (e.g. make, fix, create, implement, add, etc.).

The body should be wrapper to 72 characters and you can reference any issue and [use keywords to close them](https://help.github.com/articles/closing-issues-via-commit-messages/).

**Tip:** Think about sending an e-mail to a colleague where the first line is the subject of the email, and the body is the body of the e-mail.
