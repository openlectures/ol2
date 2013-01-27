# [openlectures Verethragna](http://openlectures.org)

Named after the Zoroastrian/Persian God of Victory - specifically the smiting of resistance - this repository tracks the bleeding-edge build for the openlectures web client and back-end.

## Introduction

Verethragna manages and displays lectures in accordance with openlectures production guidelines and specifications. The database is bidirectionally synchronized to Google Drive. Subsequent updates will allow advanced user-tracking and extensive third-party API integration

The live (shipped) version of the site can be found at http://openlectures.org.

The production version of the site can be found at http://ol2.herokuapp.com.

## Quick Start

Fork and Clone this repository to a local directory:

```bash
git clone https://github.com/jethrokuan/ol2.git
```

Run ``bundle update`` to install all gems and rails dependencies. This pulls information from the ``ol2`` gemset.

Run ``vendorer update`` to update all vendor CSS and JS dependencies. This pulls information from ``Vendorfile``. Damn have we made it easy for you.

Migrate the database and seed:

```bash
rake db:migrate
rake db:seed
```

Initialize the server instance by running:

```bash
rails s
```

If you prefer the full rackware experience, run ``thin start``. And if you happen to be one of those test-driven monkeys, ``zeus start`` followed by ``zeus s`` will give you all the cucumbers you need.

Navigate to [http://localhost:3000](http://localhost:3000) to browse the site. Live long and prosper.

## Core Dependencies

+ [Ruby 1.9.3](http://www.ruby-lang.org/en/)
+ [Rails 3.2](http://rubyonrails.org/)
+ [PostgreSQL](http://www.postgresql.org/)
+ [Twitter Bootstrap](http://twitter.github.com/bootstrap/)
+ [Elbow Grease](http://youtu.be/oHg5SJYRHA0)

## Easy Installation

If you already have Ruby on Rails and all the related core dependencies on your system, just upgrade everything to the latest stable build by running:

```bash
sudo gem update --system
gem update
```

If this throws an error (i.e. it gives you something that doesn't look nice or cute), you should do a fresh install

```bash
curl -O https://raw.github.com/joshfng/railsready/master/railsready.sh && bash railsready.sh
```

Have a coffee and feel the magic.

## Real Man's Installation (From Zero to Hero)

**OS X**

Install Homebrew

```bash
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
```

Install XCode from the [Mac App Store](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12). If you want to keep things lean, install only the command-line tools (Preferences > Downloads > Components). If you feel like proving your ultimate worth, find out how to install GCC.

Install Ruby Version Manager (RVM), Ruby and Rails in one fell swoop

```bash
curl -L https://get.rvm.io | bash -s stable --ruby --rails
```

**Windows**

"Screw Windows -- *Jethro Kuan, CTO*

"Really, who uses Winblows?!" -- *Kenneth Lim, CEO*

## Versioning

Development will be maintained under the Semantic Versioning guidelines as much as possible in order to ensure transparency and backwards compatibility.

Releases will be numbered with the following format:

`<major>.<minor>.<patch>`

And constructed with the following guidelines:

+ Breaking backward compatibility bumps the major (and resets the minor and patch)
+ New additions without breaking backward compatibility bump the minor (and resets the patch)
+ Bug fixes and miscellaneous changes bump the patch

For more information on SemVer, visit http://semver.org/.

## Changelog

We make it a habit to write Version History like Bryan Jones of [Codekit](http://incident57.com/codekit/)

**v1.0.0 (Bouncing Banana)**

+ Verethragna was born (Presumptuous of us, we know)
+ Uses Twitter Bootstrap with good cover and concealment, because everyone does. We just use it the way it was actually meant to be used.
+ Implements User Authentication and Authorization. One of those login thingamajigs.
+ Provides a basic CMS for creating, editing and deleting syllabuses, subjects, topics, lessons, checkpoints, question/answer pairs and summaries
+ Dumps a copy of any database actions to Google Drive (Create/Destroy/Edit) and allows the user to pull an update from there

## Roadmap

+ Upgrade to Ruby 2.0, Rails 4, Backbone, Grape, and all those things modern people create for post-modern people.
+ Use Ratchet for a mobile UI that isn't just scaled-down text and rearranged page elements (because Flexbox sucks so bad).
+ Identify users by school and dish out proper customized content.
+ A/B Testing because we can, and because everyone does it. We're bandwagon sluts, we know.

## Bug Tracking and Feature Requests

Have a bug or a feature request? [Please open a new issue](https://github.com/jethrokuan/ol2/issues).

Before opening any issue, please search for existing issues and read the [Issue Guidelines](https://github.com/necolas/issue-guidelines), written by [Nicolas Gallagher](https://github.com/necolas/).

A bird will poo-poo on you if you, without good reason, open an issue that has already been resolved. Jethro and Kenneth do not really follow the issue guidelines - don't judge.

## Contributing

Please submit all pull requests against *-wip branches.
If your pull request contains JavaScript patches or features, you must include relevant unit tests.
All markup should conform to their respective community style guidelines:
+ [HTML and CSS](http://github.com/mdo/code-guide)
+ [Ruby](https://github.com/styleguide/ruby)
+ [Rails](https://github.com/bbatsov/rails-style-guide)
+ [CoffeeScript](https://github.com/polarmobile/coffeescript-style-guide)
+ [Javascript](https://github.com/styleguide/javascript)

## Code Status

[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/jethrokuan/ol2)
[![Build Status](https://secure.travis-ci.org/jethrokuan/ol2.png)](http://travis-ci.org/jethrokuan/ol2)
[![Dependency Status](https://gemnasium.com/jethrokuan/ol2.png)](https://gemnasium.com/jethrokuan/ol2)

DISCLAIMER: These nice badge things are provided as-is, because everyone seems to have them. They do not, in any way, reflect the real awesomeness of our code (Yeah right).

DISCLAIMER to DISCLAIMER: It looks like these things always show that the build is failing, or that we're out of date. Really, we're not.

## Contact

A Human: hello@openlectures.org

A Bird: [@openlecturessg](http://twitter.com/openlecturessg)

A Privacy-violating Sonuvabitch: http://facebook.com/openlectures

## Authors

This repository is maintained and developed by the **Automation and Advancement Division (AAD)**, openlectures.

**Jethro Kuan**
+ http://twitter.com/jethrokuan
+ http://github.com/jethrokuan

**Kenneth Lim**
+ http://twitter.com/kenlimmj
+ http://github.com/kenlimmj

## Copyright and License

Licensed under the MIT License (MIT).

Copyright © 2013 openlectures LLP (http://openlectures.org/).

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
