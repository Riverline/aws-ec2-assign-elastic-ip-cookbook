aws-ec2-assign-elastic-ip Cookbook
==================================
This cookbook simply install and run the [aws-ec2-assign-elactic-ip program](https://github.com/skymill/aws-ec2-assign-elastic-ip) to assign an elastic-ip to the ec2 instance.

Requirements
------------
- `python` 

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['aws-ec2-assign-elastic-ip']['access-key']</tt></td>
    <td>String</td>
    <td>AWS Access Key</td>
    <td></td>
  </tr>
   <tr>
    <td><tt>['aws-ec2-assign-elastic-ip']['secret-key']</tt></td>
    <td>String</td>
    <td>AWS Secret Key</td>
    <td></td>
  </tr>
  <tr>
    <td><tt>['aws-ec2-assign-elastic-ip']['region']</tt></td>
    <td>String</td>
    <td>AWS Instance region</td>
    <td><tt>us-west-1</tt></td>
  </tr>
  <tr>
    <td><tt>['aws-ec2-assign-elastic-ip']['valid-ips']</tt></td>
    <td>String</td>
    <td>List of allowed elastic IPs, if empty, the first available elastic IP is use</td>
    <td></td>
  </tr>
</table>

Usage
-----
Just include `aws-ec2-assign-elastic-ip` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[aws-ec2-assign-elastic-ip]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Romain Cambien
