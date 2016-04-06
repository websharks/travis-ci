module.exports = {
  thenLogin: function (args) {
    return this.thenLoginAs('', args);
  },

  thenLoginAs: function (as, args) {
    if (!as) {
      as = 'admin';
    }
    args = _.extend({
      password: '',
    }, args || {});

    this.thenLogout(); // Log out!

    $.thenOpen($$.www.url('/wp-login.php'), {
      method: 'post',
      data: {
        log: as,
        pwd: args.password ? args.password : as,
        rememberme: 'forever'
      }
    });
  },

  thenLogout: function () {
    $.thenOpen($$.www.url('/wp-login.php?action=logout'));

    $.then(function () {
      if ($.exists('#error-page a')) {
        $.click('#error-page a');
        $.waitForUrl(/\?loggedout\=true/);
      }
    });
  },

  isMultisite: function () {
    return $$.system.env.CI_RUN_WP === 'multisite';
  }
};
