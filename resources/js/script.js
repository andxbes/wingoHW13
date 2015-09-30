$(document).ready(function (){
    
    $("#students_list li a").click(function (){
        addTableWithRating(this);
        $(this).off("click");
       
        $(this).click(function (){
            $("#"+$(this).attr("id")+" ~table" ).toggle("slow") ;
        });
        
    });
});

function addTableWithRating(el){
    var $el = $(el);
    $.ajax({
        url:"/controllers/get_table.php",
        type: 'POST',
        data:{
            id: $el.attr("id")
        },
        success: function (data, textStatus, jqXHR) {
            console.info(data);
            buildTable($.parseJSON(data) , $el);
            
        },
        error: function (jqXHR, textStatus, errorThrown) {
             console.info("Что-то пошло не так ..." + textStatus);
        }
        
        
    });
    
}

function buildTable(data , $el){
    if(data.length === 0) return;
    $parent = $el.parent();
    
    var table = "<table><tr><th>Предмет</th><th>Оценка</th></tr> ";
   
    for (var i in data){
        var dat = data[i];
        table+="<tr><td>"+dat.predmet+"</td><td>"+dat.mark+"</td></tr>";
    }
    table+="</table>";
    var $table =  $(table).appendTo($parent);
    $table.hide();
    $table.toggle("slow");
    
}
