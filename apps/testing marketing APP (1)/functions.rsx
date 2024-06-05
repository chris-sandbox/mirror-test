<GlobalFunctions>
  <ElasticSearchQuery
    id="searchFinnData"
    query={include("./lib/searchFinnData.json5", "string")}
    resourceName="95bf8739-143f-4aa0-9ecf-4337f8fff6aa"
    resourceTypeOverride=""
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getCopy"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </ElasticSearchQuery>
  <JavascriptQuery
    id="createQueryWithLanguage"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/createQueryWithLanguage.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="searchFinnData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <JavascriptQuery
    id="getCopy"
    notificationDuration={4.5}
    query={include("./lib/getCopy.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State id="headlines" />
</GlobalFunctions>
