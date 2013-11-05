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
    next(connection, true);
  }
};
