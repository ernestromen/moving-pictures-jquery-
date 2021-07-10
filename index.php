
<?php
require 'config.php';


if(isset($_POST['update'])){
    var_dump('here');
    foreach($_POST['positions'] as $position){
$index = $position[0];
$newPosition = $position[1];
$db->query("UPDATE boxnames	SET position = '$newPosition' WHERE id='$index'");
    }
    exit('success');
}

?>


<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="mystyle.css">
    <link rel="stylesheet" href="mystyle.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<!-- Popper JS -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
    <div class="container">
<?php while($row = $res->fetch()):?>
    <div style="background-image:url('<?=$row->image?>');background-repeat: round; height:100px;"  data-index=<?=$row->id?> data-position =<?=$row->position?> class="item"></div>
<?php endwhile;?>
   
    </div>
<script>

$('.container').sortable({

    update:function(event,ui){
$(this).children().each(function(index){
console.log(index);

if($(this).attr('data-position') != index+1){

    $(this).attr('data-position',index+1).addClass('updated');
}
});
savePosition();
    }
});

function savePosition(){
   var positions = [];
   $('.updated').each(function(){
positions.push([$(this).attr('data-index'),$(this).attr('data-position') ]);
$(this).removeClass('updated');
   });

   $.ajax({
url:'index.php',
method:'POST',
dataType:'text',
data:{
    update:1,
    positions:positions
},success:function(response){
    console.log(response);
}

   });
}
</script>
    </body>
</html>