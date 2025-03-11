# String Calculator TDD Kata

## Scope

1. Create a simple String calculator with a method signature like this:
```sh
def add(''); end

Input: a string of comma-separated numbers
Output: an integer, sum of the numbers
Examples:

Input: “”, Output: 0
Input: “1”, Output: 1
Input: “1,5”, Output: 6

```
2. Allow the add method to handle any amount of numbers.

3. Allow the add method to handle new lines between numbers (instead of commas). ("1\n2,3" should return 6)

4. Support different delimiters:
   * To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]". For example, "//;\n1;2" where the delimiter is ";" should return 3.

5. Calling add with a negative number will throw an exception: "negative numbers not allowed <negative_number>".
   * If there are multiple negative numbers, show all of them in the exception message, separated by commas.


## Set up Ruby and Rspec

This is developed on a MacBook Pro M1 with macOS Sequoia.

### Install RVM

The `rvm` ruby version manager to install `ruby`

Install `rvm` ruby version manager via `brew`:

```sh
$ brew install gnupg
$ gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
$ \curl -sSL https://get.rvm.io | bash
```
We will receive a thank you 🙏 message in the console.

Quit all Terminal.

Lunch a new Terminal and try

### Verify RVM

```sh
$ rvm --version
$ rvm list
```
We will get this message

```sh
# No rvm rubies installed yet. Try 'rvm help install'.
```
Install some ruby version such as 2.7.7

```sh
$ rvm install 2.7.7
```
After installation, check which ruby version available.

```sh
$ rvm list
ruby-2.7.7 [ x86_64 ]
# Default ruby not set. Try 'rvm alias create default <ruby>'.
```

Create default ruby version

```sh
$ rvm alias create default 2.7.7
```
### Clone the repo

```sh

$ git clone git@github.com:nanda-chitta/string-calculator.git
$ cd string-calculator
$ git checkout master
$ gem install bundler
$ bundle install
```
### Run the unit test case

```sh
$ bundle exec rspec # runs rspec unit tests
```
