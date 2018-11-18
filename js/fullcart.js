var fullcart = {
    add: function() {
        Cookies.set('addtocart', true);
        this.changeImage();
        return true;
    },

    changeImage: function() {
        $('input.view-cart')[0].src = '/img/cart-full.png';
    },

    init: function() {
        if(Cookies.get('addtocart') == 'true') {
            fullcart.changeImage();
        }    
    
    }
}

$(document).ready(function() {
    fullcart.init();
}.bind(this));