#! /usr/bin/env bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd "${DIR}/build"
	npm install -g grunt-cli
	npm install
	grunt download-atom-shell
popd

"${DIR}/build/atom-shell/Atom.app/Contents/MacOS/Atom" "${DIR}/to-fix-on-top" 