### Version

Ruby: 3.4.4  
Rails: 8.0.2

### How to run locally

Check Ruby and Rails are [installed](https://guides.rubyonrails.org/install_ruby_on_rails.html), clone the repository and run `bundle install` to install all Gemfiles.

To run the dev and test **databases**, be sure to have docker installed and run `docker compose up -d`. An adminer service will also spin up allowing you to examine the dbs easily.  
After that, you must run `rails db:migrate`.  
To run the development server execute `rails server`.

To run the **tests**, execute: `rails test`.

### Notes on development

I created the resource `Task` with `rails g scaffold Task title:text! description:text completed:boolean!`.  
I left the timestamp fields voluntarily. Added manually `default: false` in `completed` field.
