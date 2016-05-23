# README

This project is a small integration tests experience, using the best practices gathered from blog posts on how to test rails backend backed API's.
The goal of this project is to support my upcoming post [How I broke the code](https://google.com). Go there and read it to get a bit more of context.

I decided to test the call to the endpoint since my main goal was test an actual call to the API and make sure that the 3rd party application that is consuming it,
will get the expected payload. In other words the whole call flow to the API, an integration test.

Controller tests examples will be implemented later.

In the _References_ section the links of the posts that I've looked at to put up the example.

* Ruby version
    * At branches _master_ and _rails4.2.6_, the ruby version is 2.3.0
    * At branch _rails3.0.3_, the ruby version is 1.8.7 (Long live 1.8.7)
 
* Database
    * I used _mongo_ (3.2.6) with _mongoid_ (version varies depending on the branch). 

* Gems
    * bundler 1.12.4
    
### Usage ###

After checking out the repo, run `bundle install` to install dependencies. Then, run `bundle exec rspec` to run the tests.

### Structure ###

I have defined a very simple model: 

* Person - A person can have a
    * first name
    * middle name
    * last name
    * list of addresses
* Address - An address has a
    * Street
    * City
    * Country

Bellow a json example:

```javascript
{ 
  "first_name":"Lothar",
  "middle_name":"Reinhardt",
  "last_name":"Steinhardt",
  "addresses":
    [
      {
        "street":"street1",
        "city":"city1",
        "country":"country1"
      }
    ]
}
```

#### Notable gems ####

* [JBuilder](https://github.com/rails/jbuilder)
This gem provides a really nice, clean and simple DSL to work through JSON structures. This great when working with API's that return JSON.
* [rspec json schema matcher](https://github.com/lnikkila/rspec_json_schema_matcher)
A useful matcher to validate json payloads structures against a [json schema](http://json-schema.org/)
* [rspec its](https://github.com/rspec/rspec-its)
* [factory girl](https://github.com/thoughtbot/factory_girl)

#### Branch _master_ ####

The purpose with this branch was to develop the test examples using the latest bleeding edge versions of rails, rspec and mongoid as of late May 2016. 

* rails 5.0.0.rc1 (which has the drier api specific rails option)
* rspec 3.5.0.pre (Everything that was on the master branch)
```ruby
%w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
  gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
end
```
* mongoid 6.0.0 (Again this was the version that it was on the master branch at that time) 

Rails 5.0.0.rc1, is bundled with the rails api gem, that allows developers to create rails based app api's, yet only with the needed functionality to develop an API.

You can create a Rails 5 API project running the command `rails new api-example --api --skip-active-record --skip-sprockets`. I've also added the options `--skip-active-record`
to remove active record support, since I want to setup a mongo database, and `--skip-sprockets`, since I'm not interested in [asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html).

The only caveat is that I had to use a specific [branch version of the rspec json schema matcher gem](https://github.com/orangeeli/rspec_json_schema_matcher/tree/rspec-core-bump-to-3.5), since the rspec dependency on the project is locked on rspec 3.0.

#### Branch _rails4.2.6_ ####

Contrary to the previous branch, the purpose with this branch was to run, the project against the latest stable versions of rails, rspec and mongoid as of late May 2016.

Rails API option is not available on rails 4.2.6, yet you can added as a gem dependency `gem 'rails-api'`. 

#### Branch _rails3.0.3_ ####
This branch has some substantial changes compared to the other branches, due to the use of legacy versions of both rails and ruby. The main issue is the map key/value declaration.
On ruby 1.8.7 is with `=>`, whilst in recent ruby versions is just a `:`. This version is runnable and an example on how to run tests with a legacy project that hasn't been updated. 
I also had to use a specific version of the [rspec json schema matcher gem](https://github.com/orangeeli/rspec_json_schema_matcher/tree/because-ruby-1.8.7-not-quite-dead-yet), due to the issues mentioned with legacy versions.

### Contributing ###
Suggestions and contributions are very welcomed! =)

### Licence ###
[ISC License](http://opensource.org/licenses/ISC).

### References ###

