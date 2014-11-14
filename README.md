# stackengine-cookbook

This is an app-cookbook that will install basic pieces for stackengine beta

PLEASE NOTE!!! This is not an official stackengine implementation and will never plan on being one. This is simply my way to get stackengine set up and tested in Beta. 

## Supported Platforms

TODO: Ubuntu 14.04

## Attributes

## Usage

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
