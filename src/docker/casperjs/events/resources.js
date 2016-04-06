$.on('resource.error', function (resource) {
  $.echo('Failed to load: `' + resource.url + '`. Error: ' + resource.errorString);
});
