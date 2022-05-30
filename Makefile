# cleans everything
clean:
	flutter clean

# generates intl
intl:
	flutter pub run intl_utils:generate

# run code generation
gen:
	cd bloc_sample && flutter pub run build_runner build --delete-conflicting-outputs

deps:
	flutter pub get
	cd bloc_sample &&  flutter pub get
	cd riverpod_sample && flutter pub get

# make everything
all: clean deps intl gen
