#!/usr/bin/env bash

if [ "$PHPCS_WARNINGS" != "warnings" ]; then
  $DRUPAL_BUILD_ROOT/drupal/vendor/bin/phpcs $TRAVIS_BUILD_DIR -p --ignore=$TRAVIS_BUILD_DIR/README.md --standard=phpcs.xml --colors
else
  $DRUPAL_BUILD_ROOT/drupal/vendor/bin/phpcs --config-set ignore_warnings_on_exit 1
  $DRUPAL_BUILD_ROOT/drupal/vendor/bin/phpcs $TRAVIS_BUILD_DIR -p --ignore=$TRAVIS_BUILD_DIR/README.md --standard=DrupalPractice --colors
fi
