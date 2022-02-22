# rotate

`$ git clone https://github.com/tomato-studios/rotate.git --recurse-submodules`

## General Folder Structure

Parts of the app (like each individual page) or module should have

* an `application` folder
  * for business logic, e.g. provided by blocs or cubits

* an `infrastructure` folder
  * for communicating with remote services like APIs

* a `presentation` folder
  * for ui related stuff like widgets

* a `domain` folder
  * for domain models like data classes, entities and enums

## Initialize a git submodule

`$ git submodule add -b main [URL to Git repo] local_packages/[repo name]`
`$ git submodule init`

## Start Code Generation once

`$ flutter pub run build_runner build --delete-conflicting-outputs`

## Start and Watch Code Generation

`$ flutter pub run build_runner watch --delete-conflicting-outputs`
