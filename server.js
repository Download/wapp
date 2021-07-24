// server.js
const fs = require('fs')
const { createServer } = require('https')
const { parse } = require('url')
const next = require('next')

const dev = process.env.NODE_ENV !== 'production'
const app = next({ dev })
const handle = app.getRequestHandler()

const options = {
  key: fs.readFileSync('.dev/ssl.dev.key'),
  cert: fs.readFileSync('.dev/ssl.dev.crt'),
  ca: [fs.readFileSync('.dev/ssl.root.crt')]
};

app.prepare().then(() => {
  const port = parseInt(process.env.PORT, 10) || 3000
  createServer(options, (req, res) => {
    // Be sure to pass `true` as the second argument to `url.parse`.
    // This tells it to parse the query portion of the URL.
    const parsedUrl = parse(req.url, true)
    const { pathname, query } = parsedUrl

    if (pathname === '/a') {
      app.render(req, res, '/a', query)
    } else if (pathname === '/b') {
      app.render(req, res, '/b', query)
    } else {
      handle(req, res, parsedUrl)
    }
  }).listen(port, (err) => {
    if (err) throw err
    console.log(`
> Ready
https://localhost:${port}
https://dev.local:${port}
https://eev.local:${port}`
    )
  })
})