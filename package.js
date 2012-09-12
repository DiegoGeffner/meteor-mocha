Package.describe({
  summary: "Mocha for Meteor"
});

Package.on_use(function (api) {
  api.use('coffeescript', 'client');
  api.use('modules-ordering', 'client');
  // api.add_files('mocha.css', 'public');
  api.add_files('mocha.js', 'client');
  api.add_files('window.search.coffee', 'client');
  api.add_files('RunMocha.coffee', 'client');
});

Package.on_test(function (api) {
});
