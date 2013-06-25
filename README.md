## Description

Simple, fast, way to lookup a north american phone number carrier.


## Quick Start

The easiest way to get started is to install it via RubyGems. You can do this easily:

    $ gem install carrierlookup

or Gemfile:

    gem 'carrierlookup'


You can now use the library to lookup carriers this way:

```ruby
require 'carrierlookup'

@data = Carrier::Lookup::Perform.new
@data.lookup(
    :number => "1 (415) 453-1123"
)
```

### Rest API

    http://carrier.cardup.co/lookup?number=14154531123


### Format
Number can be in any format:

    4154531123
    (415) 453-1123
    1 (415) 453-1123
     

### Response

Rest API:

    json : success
    
    {
        "status": 0
        "carrier": "TELUS Mobility",
        "city": "Winnipeg",
        "state": "",
        "createdAt": "2013-06-17 15:18:41 -0600"
    }
    
    json : not found
    
    { 
        "status" : -1
    }

Gem:

    hash : success
    
    {
        "carrier"=>"NEW CINGULAR WIRELESS PCS, LLC", "city"=>"JUNEAU", "state" => "AK", createdAt"=>"2013-06-17 15:06:50 -0600"
    }

    hash : not found

    nil
    
## License

See the included LICENSE file for details.
