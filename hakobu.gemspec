# frozen_string_literal: true

# Copyright (c) 2020 Valeriya Poroshkina
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'hakobu/version'

Gem::Specification.new do |spec|
  spec.name        = 'hakobu'
  spec.version     = Hakobu::VERSION
  spec.licenses    = ['MIT']
  spec.summary     = 'Universal client for using FTP/SFTP'
  spec.authors     = ['Valeriya Poroshkina']
  spec.email       = ['lera.poroshkina@mail.ru']
  spec.homepage    = 'https://github.com/PoroshkinaVV/hakobu'
  spec.files       = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test/spec)/}) }
  end
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.metadata['homepage_uri'] = spec.homepage
  spec.bindir        = 'bin'
  spec.executables   = ['hakobu']
  spec.require_paths = ['lib']
end
