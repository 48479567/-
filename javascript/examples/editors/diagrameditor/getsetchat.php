
<script>

  $(document).ready(function() {
    $("#result").animate({scrollTop: $("#result")[0].scrollHeight});
  $(document).bind('keypress', function(e) {
    if(e.keyCode==13) {
      $("#result").animate({scrollTop: $("#result")[0].scrollHeight});
      $('#my_form').submit();
      $('#comment').val("");
    }
  });
  });

  function post() {
    $("#result").animate({scrollTop: $("#result")[0].scrollHeight});
    var comment = document.getElementById("comment").value;
    var name = document.getElementById("username").value;
    var proyecto = document.getElementById("cod_proyecto1").value;

    if(comment != ""){
      $.ajax ({
        type: 'post',
        url: 'commentajax.php',
        data: {
          user_comm:comment,
          user_name:name,
          cod_proyecto:proyecto
        },
        success: function (response) {
          document.getElementById("comment").value="";
        }
      });
    }   
    return false;
  }

  function autoRefresh_div() {
    $("#result").load("load.php").show();
  }
  setInterval('autoRefresh_div()', 2000);

</script>

