<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>

<script>
    var $i = 0;
    var $len = $(".questions").length;
    $(".questions:eq('"+$i+"')").show();
    $(".Previous").hide();
    $(".setName").hide();
    $(".Previous").click(function() {
        $i--;
        if ($i != -1) {
            $(".questions").hide();
            $(".questions:eq('"+$i+"')").show();
        } 
        if ($i == 0)
            $(".Previous").hide();
        if ($i == $len-2) 
        {
            $(".Next").show();
            $(".setName").hide();
        }
        console.log($i);
    });

    $(".Next").click(function() {
        $i++;
        if ($i != $len) {
            $(".questions").hide();
            $(".questions:eq('"+$i+"')").show();
        } 
        if ($i == $len-1) 
        {
            $(".Next").hide();
            $(".setName").show();
        }
        if ($i == 1)
            $(".Previous").show();
            console.log($i);
    });

    $(".setName").click(function() {
        $(".questions").hide();
        $(".nameSpace").show();
        $(".saving").show();
        $(".Previous").hide();
        $(".Next").hide();
        $(".setName").hide();
    });

// Radio button select just one, because i'm using inputs name for get data (can't make input groups by name tag)
var j = 0;
$('input[type=radio]').click(function(e){
    var g = $(this);
    $(".questions").each(function(index) {
        for( i = 0 ; i < $(this).find('input').length; i++)
            if($(this).find('input[type=radio]').eq(i).is(':checked')) {
                j++;
                if (j > 1)
	                $(".questions").eq(index).find('input[type=radio]').prop('checked', false);
            }
        j = 0;
        $(".questions").eq(index).find(g).prop('checked', true);
    });
});

</script>