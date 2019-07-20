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
C library manually compiled and installed. The proof:

    ~/test $ ls
    ~/test $ git clone https://github.com/wbreeze/dvt.git
    Cloning into 'dvt'...
    remote: Enumerating objects: 15, done.
    remote: Counting objects: 100% (15/15), done.
    remote: Compressing objects: 100% (9/9), done.
    remote: Total 15 (delta 3), reused 12 (delta 3), pack-reused 0
    Unpacking objects: 100% (15/15), done.
    ~/test $ cd dvt
    ~/test/dvt $ bundle install
    Using bundler 2.0.1
    Using davenport 1.0.0
    Bundle complete! 1 Gemfile dependency, 2 gems now installed.
    Use `bundle info [gemname]` to see where a bundled gem is installed.
    ~/test/dvt $ ruby test.rb
    Hola
    [1, 3, 2, 4]
    ~/test/dvt $
