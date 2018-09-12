(function() {
    describe('Trivial Functions to get Mocha Working', function(){
        describe('1. SaysHello', function(){
            it('should say hello', function() {
                assert(sayHello() === 'Hello');
            })
        })
    })

}())