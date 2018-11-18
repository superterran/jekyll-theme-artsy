var dripload = {
// once started, this will start populating the gallery one image at a time.
    left: true,
    // this will load one image at a time, 
    generateImage: function() {

        article = $('.gallery article')[0]
        data = article.dataset;

        image = new Image();
        image.onload = function(a) {
            if(this.left) {
                append = $('#col-a')
                this.left = false;
            } else {
                append = $('#col-b')
                this.left = true;
            }
            
            pricecallout = '<b>'+data.title+'</b>';

            if(data.price) {
                pricecallout += ' &#160;&#160;&#160; Trina sells these directly!  &#160;&#160 <a href=\''+data.url+'\'>Buy now for $'+data.price+'</a>';
             }


            $(image).appendTo(
                $('<a href="'+data.href+'" title="'+pricecallout+'"></a>')
            ).closest('a').appendTo(append);

            this.generateImage();

        }.bind(this);
        image.src = data.thumbnail;
        article.remove();
    }
}