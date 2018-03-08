
# cacert_fingerprint

This module adds facts which report the SHA256 cacert fingerprint in two formats as follows:

- `cacert_fingerprint` - lower case, no colons
  Eg: `8b59d3a21ddbe40fc9f620dced3f611c70399b320717164f335db211d12a7ef7`

- `cacert_fingerprint_colonated` - upper case, colon separated pairs
  Eg: `8B:59:D3:A2:1D:DB:E4:0F:C9:F6:20:DC:ED:3F:61:1C:70:39:9B:32:07:17:16:4F:33:5D:B2:11:D1:2A:7E:F7`

This can be of value if your Puppet control repo is deployed to more than one installation of Puppet, with separate CAs on each (eg a primary installation, and a sandpit or development installation). You can then use the cacert_fingerprint fact to determine which installation your code is being consumed on, so you can then put paths into Hiera to override such things as your puppet agent configuration, etc.

## Usage

Just have this module installed in the desired Puppet code environment(s).

