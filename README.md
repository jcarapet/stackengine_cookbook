# stackengine-cookbook

This is an app-cookbook that will install basic pieces for stackengine beta

PLEASE NOTE!!! This is not an official stackengine implementation and will never plan on being one. This is simply my way to get stackengine set up and tested in Beta. 

## Supported Platforms

TODO: Ubuntu 14.04


NOT INITIAL FOCUS: Centos, Rhel systems. 
will need to add case statements which are frowned upon to get things done. 

## Attributes

No attributes yet, but some that come to mind is a working directory for deploys, names of containers, and names of master vs slave setup

## Usage

This will be good for initially setting up workstations and eventually will be extended for creating an end to end system. 

### stackengine::default

Include `stackengine` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[stackengine::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Jeff Carapetyan (<jeff@datafundamentals.com>)
