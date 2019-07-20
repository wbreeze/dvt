This is a smoke test for installing the davenport gem,
which uses a native compiled C library.

Find the source for the davenport gem at
[wbreeze/davenport-ruby](https://github.com/wbreeze/davenport-ruby)

Find the source for the C library at
[wbeeze/davenport](https://github.com/wbreeze/davenport)

The following assumes that Ruby is installed with RubyGems and Bundler.
It also assumes the system has a C compiler with standard libraries,
which will compile the native source.

The test supports `rbenv` and the version of Ruby expected is in the
file, `.ruby-version`.

For the test to be valid, it is important that the davenport C library
is not already installed to the operating system. The gem should compile
and install the C library when it is itself installed.

To install and run this smoke test:

    git clone https://github.com/wbreeze/dvt.git
    cd dvt
    bundle install
    ruby test.rb

The output should be as follows:

    Hola
    [1, 3, 2, 4]

This smoke test has successfully run on a MacOS system with the Davenport
C library manually compiled and installed.
