const request = require('supertest');

const app = require('../app');

describe('cci-app-node', () => {

    describe('#GET /', () => {
        it('Should return Hello World response', (done) => {
            request(app)
                .get('/')
                .expect(200)    // Status
                .expect('Hello World\n')
                .end(done);
        })
    })
})