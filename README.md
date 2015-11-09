# harrogate-installer

This repository includes the scripts and resources necessary to build and package [harrogate](). Currently, it supports OS X and Windows.

### Steps for Packaging

##### OS X

Clone this repository into a directory. This directory will serve as the root directory for packaging.

```
./harrogate-installer/OSX/fetch.sh
./harrogate-installer/OSX/build.sh
./harrogate-installer/OSX/package.sh
```

The root directory now contains KIPR-Software-Suite-1.1.x, which contains harrogate and all necessary libraries. To test harrogate, run the server:

```
cd KIPR-Software-Suite-1.1.x/harrogate
../shared/bin/node server.js
```

##### Windows

Coming soon!

### Authors

* Nafis Zaman
* Stefan Zeltner
