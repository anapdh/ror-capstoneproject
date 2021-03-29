![](https://img.shields.io/badge/Microverse-blueviolet) ![](https://img.shields.io/badge/RoR-red)

> This is the final project for Ruby on Rails Microverse's Module: a Twitter Clone.

# TweetHub
Features on this project:

1. After creating an account, a user can log in to the app only by typing the username and password.
2. The user is presented with the homepage that includes:
    1. Left-side menu with current user information and main navigation.
    2. All *Tweets/Opinions* in the center of the screen, as the main content.
    3. Right-side section with *Who to follow*.
    4. More information about a user when clicking on its profile.
3. The *Tweets* section includes:
    1. Simple form for creating a tweet.
    2. List of all tweets (sorted by most recent) that display tweet text and author details.
4. The *Who to follow* section includes:
    1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. When the user opens the profile page, they can see:
    1. Left-side menu.
    2. Cover picture and *Tweets* tab in the center.
    3. Right-side section with *Profile detailed info.*
6. The *Profile detailed info* section includes:
    1. User photo.
    2. Button to follow a user.
    3. Stats: total number of tweets, number of followers and number of following users.
    4. List of people who follow this user (only if there are any followers).
7. *Additional feature*:
    Users can upload a profile picture and cover image from their computer when signing up or when editing the account. When not uploading in Sign Up, a default profile picture and cover image will show up (the feature still needs improvements with an s3 server since Heroku discards images when refreshing Dinos).
    
## Built With

- Ruby v2.7.0
- Ruby on Rails v5.2.4
- Devise

## Live Demo

[TweetHub](https://murmuring-forest-99662.herokuapp.com/)


## Getting Started

To get a local copy and run the this repository follow these simple example steps:

1. Download/clone this repository [GitHub Repository](https://github.com/anapdh/ror-capstoneproject) on your computer.
2. In your terminal, use the command `cd` to go to the place where you saved/cloned the repository. For example: _Desktop/User/ror-capstoneproject/_. You may use the command `ls` to see the files and repositories existent in your current location.

### Prerequisites

Ruby: 2.7.2
Rails: 6.1.3
Postgres

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start the server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```
## Author

👩🏼‍💻 **Ana Paula Hübner**

- GitHub: [@anapdh](https://github.com/anapdh)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/anapdh)
- Twitter: [@dev_anahub](https://twitter.com/dev_anahub)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/anapdh/ror-capstoneproject/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.
