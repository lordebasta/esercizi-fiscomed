### Version

Ruby: 3.4.4  
Rails: 8.0.2

### How to run locally

Check Ruby and Rails are [installed](https://guides.rubyonrails.org/install_ruby_on_rails.html), clone the repository and run `bundle install` to install all Gemfiles.

To start the **databases** locally, be sure to have docker installed and run `docker compose up -d`. An adminer service will also spin up allowing you to examine the dbs easily.  
After that, you must run `rails db:migrate` for the dev db or `rails db:migrate RAILS_ENV=production` for the prod db.  
To run the development server execute `rails server` for runnning in development or `rails server -e production` for running in production.

To run the **tests**, execute: `rails test`.

### API documentation

You can find an API documentation made with postman [here](https://documenter.getpostman.com/view/10447848/2sB2x8EWvB).  
For each API endpoint, in the top-right corner you can find a dropdown menu which provides different types of response (e.g. successful response, task not found, title not provided, etc...).

### Notes on development

I created the resource `Task` with `rails g scaffold Task title:text! description:text completed:boolean!`.  
I left the timestamp fields voluntarily. Added manually `default: false` in `completed` field.
