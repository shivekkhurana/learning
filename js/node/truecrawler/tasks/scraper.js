exports.task = {
  name: "scraper",
  description: "scraper",
  scope: "any",
  runAt: new Date().getTime() + 3000,
  frequency: 500,
  toAnnounce: true,
  run: function(api, params, next){
    if(params == null){ prams = {}; }
    var error = null;
    api.log("\n------\n\n"+params.name, "green");
    next(error, true);
  }
};