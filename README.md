
# cacert_fingerprint

This module adds facts which report the SHA256 cacert fingerprint in two formats as follows:

`cacert_fingerprint` - lower case, no colons

Eg: `22a5e9513bbae209b3c25e2dbb48f22ff07c9ede`

`cacert_fingerprint_colonated` - upper case, colon separated pairs

Eg: `22:A5:E9:51:3B:BA:E2:09:B3:C2:5E:2D:BB:48:F2:2F:F0:7C:9E:DE`

This can be of value if your Puppet control repo is deployed to more than one installation of Puppet, with separate CAs on each (eg a primary installation, and a sandpit or development installation). You can then use the cacert_fingerprint fact to determine which installation your code is being consumed on, so you can then put paths into Hiera to override such things as your puppet agent configuration, etc.

## Usage

Just have this module installed in the desired Puppet code environment(s).

