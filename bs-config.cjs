module.exports = {
    proxy: "localhost:8000",
    files: ["**/*.css", "**/*.hbs", "**/*.js"],
    ignore: ["node_modules", "tests"],
    reloadDelay: 10,
    ui: false,
    notify: false,
    port: 3000,
  };