$( document ).ready( function() {
    
    $('#grab').change(function() {
        console.log($(this).val());
        $.ajax({
            url: '/grabber',
            type: 'PUT',
            data: 'position='+$(this).val(),
            success: function(res){
                console.log(res);
            }
        });
    });
    
    $('#').change(function(){});
                      
});
                 
