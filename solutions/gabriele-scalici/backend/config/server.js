module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '3739a1d640c8eefe88d54d8162c7d0cd'),
    },
  },
  autoReload: {
    enabled: true
  }
});
