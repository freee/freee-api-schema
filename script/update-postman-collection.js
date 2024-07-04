const axios = require('axios');
const fs = require('fs')
const product = process.argv[2]
const collectionID = process.argv[3]

// 配置されているjsonからとってくる
const bufferData = fs.readFileSync(`tmp/${product}/collection.json`)
const dataJSON = bufferData.toString()
const data = JSON.parse(dataJSON)
const updateCollection = {
  collection: data
}

// collection更新
const config = {
  method: 'put',
  maxBodyLength: Infinity,
  url: 'https://api.getpostman.com/collections/' + collectionID,
  headers: { 
    'Content-Type': 'application/json', 
    'X-API-Key': 'xxxxx'
  },
  data : updateCollection
};

axios.request(config)
.then((response) => {
  console.log(JSON.stringify(response.data));
})
.catch((error) => {
  console.log(error);
});