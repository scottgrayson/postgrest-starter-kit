import { rest_service, jwt, resetdb } from '../common.js'

const request = require('supertest')
const should = require('should')

describe('insert', function () {
  after(function (done) {
    resetdb()
    done()
  })

  it('basic', function (done) {
    rest_service()
      .post('/rpc/login?select=email,token')
      .set('Accept', 'application/vnd.pgrst.object+json')
      .send({
        email: 'alice@email.com',
        password: 'pass'
      })
      .expect('Content-Type', /json/)
      .then( (auth) => {
        rest_service()
          .post('/items')
          .send({
            name: 'testname'
          })
          .set('Authorization', 'Bearer ' + auth.body.token)
          .expect(201, done)
      })
  })
})
