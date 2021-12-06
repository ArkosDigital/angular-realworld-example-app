const express = require('express')
const app = express()
const port = 8040

app.get('/', (req, res) => {
  res.send('Hello World-1.2.6')
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
