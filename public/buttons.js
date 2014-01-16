$( document ).ready( function() {
    
    $('#grab').change(function() {
        console.log($(this).val());
        $.ajax({
            url: '/dof/0',
            type: 'PUT',
            data: 'position='+$(this).val(),
            success: function(res){
                console.log(res);
            }
        });
    });
    
    $('#').change(function(){});
                      
});
                 
