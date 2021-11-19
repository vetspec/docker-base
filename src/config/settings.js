require('dotenv').config({ silent: true });

module.exports = {
  port: process.env.PORT || 3000,
  env: process.env.NODE_ENV || 'development',

  // Environment-dependent settings
  development: {
    db: {
      dialect: 'sqlite',
    },
  },
  production: {
    db: {
      dialect: 'sqlite',
      storage: 'db/database.sqlite',
    },
  },
};
