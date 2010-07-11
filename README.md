# TextMate bundle for Bundler #

Helpers for managing Gemfiles and bundler command.

## Features ##

### Gemfile ###

The following snippets/commands work within your Gemfile.

Shift+Ctrl+Alt+B - Change to **Bundler** grammar/syntax

**Tab Completions:**

`gem` - specify a gem name and it inserts Gemfile; e.g. `gem 'fakeweb', '1.2.8'` or `gem 'awesome_print', '0.2.1', :require => 'ap'`

`group` - snippet for the `group :development do ... end` block

## Installation ##

To install via Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/drnic/Bundler.tmbundle.git
    osascript -e 'tell app "TextMate" to reload bundles'

Source can be viewed or forked via GitHub: [http://github.com/drnic/Bundler.tmbundle](http://github.com/drnic/Bundler.tmbundle)


## License ##

(The MIT License)

Copyright (c) 2009 Dr Nic Williams, drnicwilliams@gmail.com

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
