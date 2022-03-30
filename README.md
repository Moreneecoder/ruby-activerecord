# ruby-activerecord
> Simple code implementation for using ActiveRecord gem outside of Rails.

## About This Project
This is the repo for the full code of my 2-part technical article titled [Using Ruby's Active Record Gem Outside The Rails Web Framework](https://mobello.hashnode.dev/using-rubys-active-record-gem-outside-the-rails-web-framework-part-1).

## Getting Started

To set up a local version of this project, a collection of steps have been put together to help guide you from installations to usage. Simply follow the guide below and you'll be up and running in no time.

### Set up Project

- Install [git](https://git-scm.com/downloads)
- Install [the Ruby programming language](https://ruby-doc.org/downloads/), if you haven't already.
- Open Terminal
- Navigate to the preferred location/folder you want the app on your local machine. Use `cd <file-path>` for this.
- Run `git clone https://github.com/Moreneecoder/soccer-info.git` to download the project source code.
- Now that you have a local copy of the project, navigate to the root of the project folder from your terminal.
- Run `bundle install` to install all dependencies in the Gemfile file.

### Set up Database
- This project uses [postgresql](https://www.postgresql.org/download/), so ensure you have that installed first
- Run the commands below to create and migrate database
```
   rake db:create
   rake db:reset
   rake db:migrate
```

## Authors

👤 **Bello Morenikeji Fuad**

- GitHub: [@moreenecoder](https://github.com/Moreneecoder)
- Twitter: [@mo_bello19](https://twitter.com/mo_bello19)
- LinkedIn: [Morenikeji Bello](https://linkedin.com/morenikeji-bello)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.
