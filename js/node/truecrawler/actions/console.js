exports.action = {
  name: "console",
  description: "Panel to initiate the scraper in background",
  inputs: {
    required: [],
    optional: [],
  },
  blockedConnectionTypes: [],
  outputExample: {
    randomNumber : 121
  },
  matchExtensionMimeType: false,
  version: 1.0,
  run: function(api, connection, next){
    task = new api.task({
      name:"scraper",
      params:{name:"shivek"}
    });
    task.enqueue();
    next(connection, true);
  }
};