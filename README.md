### Pinning Board

This is Pinterest Style application built using Ruby on Rails. This project is based on the Mackenzie Child series of tutorials ['12 in 12 weeks'](http://youtu.be/abcnfFS_DS8?list=PL23ZvcdS3XPLNdRYB_QyomQsShx59tpc-).

![image](https://raw.githubusercontent.com/charlesdebarros/Pinning-Board/master/app/assets/images/screenshot.png)

### Installing Pinning Board

* Clone repo
* CD into repo's directory by running ```cd Pinning-Board/```
* Run ```bundle install```
* Create and migrate the dabatase by running the ``` rails db:create db:migrate``` command
 * If you want some dummy data to work with, run the ```rails db:seed``` command after creating and migrating the database
 * Check the ```db/seeds.rb``` file for the dummy user's login details
* Start Rails server running the ```rails server``` command
* Open ```localhost:3000``` URL in your favourite browser
* Have fun!

### Troubleshooting

If, when running ```bundle install```, you come up with any errors, delete the '_Gemfile.lock_' file by running the ```rm Gemfile.lock``` command and then rerun the ```bundle install``` command. Any possible errors may very well be caused by a 'newer' version of any of the gems used in the app.

### Technologies used:

* Ruby 3.1.X
* Rails 6.1.X
* PostgreSQL 12.6
* Haml 6.1.X
* Bootstrap-Sass 3.4.X
* Autoprefixer Rails 9.4.7
* Simple Form 5.2.X
* PaperClip 6.1.0
* Devise 4.8.X
* Masonry Rails 0.2.4
* Act as Votable 0.12.0

### TODO

* Restricting 'editing' and 'deleting' to Pin's creator
* Work on overall styling
* Add unit and integration tests
