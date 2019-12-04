# IP Mutton

A very basic Ruby on Rails website whose job is to provide a "What is my IP address" view.  
It displays both IPv4 and IPv6 addresses if applicable.  Location information is obtained using 
MaxMind's GeoIP2 database.  It also displays the Autonomous System Number (ASN) with the IP address.

This website runs on Rails 6.0 and Ruby 2.6.3.  It doesn't use any database and has most unnecessary
components of Rails disabled.  To run it, simply run `bundle` and `rails s`.

