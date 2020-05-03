const index = {
    Mostrar: function(req,res){
        res.render('index', { title: 'Home' });
    }
}
module.exports = index;