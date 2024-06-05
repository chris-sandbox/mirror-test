const language = "English";
const query = {
  "index": "qc_ad_generation",
  "body": {
    "size": 1, // Limiting the number of results to 1
    "query": {
      "bool": {
        "must": [
          { "match": { "status": "Waiting on QA Assessment" } },
          { "match": { "language": language } } // Adding filter for language
        ]
      }
    }
  }
};

return query;
