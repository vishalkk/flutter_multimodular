# flutter_multimodular_practice

A new Flutter project.

## How to create module?

1- Create directory
--> mkdir core

2- --> cd core

3- --> flutter create --template=package enter_module_name_here
3- --> flutter create --template=package data

========================= OR =========================
Lect-6-How-to-create-a-module
1- --> flutter create --template=package core/data

========================================================
1 --> dart pub add melos
2 --> dart pub global activate melos
3 --> export PATH="$PATH":"$HOME/.pub-cache/bin"
4 --> dart pub outdated
5 --> dart pub upgrade --major-versions
6 --> open ~/.zshrc
7 --> export PATH="$PATH":"$HOME/.pub-cache/bin" // copy and paste in .zshrc
