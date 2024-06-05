//  let qcData = searchFinnData.data.hits.hits

let qcData = ["headline1", "headline2", "headline3"];

console.log("qcData ==> ",qcData)

//  headlines.setValue(qcData[0]._source.Headlines)
headlines.setValue(qcData)



//  console.log("qcData[0]._source.Headlines ==> ",qcData[0]._source.Headlines)


console.log("headlines ==> ",headlines)


return {
  headlines: headlines.value, 

}