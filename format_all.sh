#!/bin/sh

find src -regex '.*\.\(cpp\|h\)' -exec clang-format -style=file -i {} \;
find tests -regex '.*\.\(cpp\|h\)' -exec clang-format -style=file -i {} \;