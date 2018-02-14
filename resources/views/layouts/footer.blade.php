<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>

<script>
    var $i = 0;
    var $len = $(".questions").length;
    $(".questions:eq('"+$i+"')").show();
    $(".Previous").hide();
    $(".Previous").click(function() {
        $i--;
        if ($i != -1) {
            $(".questions").hide();
            $(".questions:eq('"+$i+"')").show();
        } 
        if ($i == 0)
            $(".Previous").hide();
        if ($i == $len-2)
            $(".Next").show();
        console.log($i);
    });

    $(".Next").click(function() {
        $i++;
        if ($i != $len) {
            $(".questions").hide();
            $(".questions:eq('"+$i+"')").show();
        } 
        if ($i == $len-1)
            $(".Next").hide();
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
</script>