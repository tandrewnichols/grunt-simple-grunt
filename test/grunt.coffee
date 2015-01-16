expect = require('indeed').expect
sinon = require('sinon')

describe 'grunt', ->
  Given -> @cli = require('simple-cli')
  Given -> sinon.stub @cli, 'spawn'
  Given -> @grunt =
    registerMultiTask: sinon.stub()
  Given -> @context =
    async: sinon.stub()
  Given -> @cb = sinon.stub()
  Given -> @context.async.returns @cb
  Given -> @subject = require('../tasks/grunt')

  When -> @subject @grunt
  And -> expect(@grunt.registerMultiTask).to.have.been.calledWith 'grunt', 'A grunt wrapper to register alias tasks that use flags', sinon.match.func
  And -> @grunt.registerMultiTask.getCall(0).args[2].apply @context, []
  Then -> expect(@cli.spawn).to.have.been.calledWith @grunt, @context, 'grunt', @cb
