module.exports = {
  url: function (path) {
    path = path ? path : '';
    return 'https://' + $$.system.env.CI_NFO_ROOT_HOST + path;
  },
  subUrl: function (path, sub) {
    path = path ? path : '';
    sub = sub ? sub : 'sub';
    return 'https://' + sub + '.' + $$.system.env.CI_NFO_ROOT_HOST + path;
  }
};
