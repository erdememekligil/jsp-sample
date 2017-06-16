var c = false;
function animCompleted() {
    // Animation complete.
    console.log("completed.");
    c = !c;
    if (c) {
        $('#hello').animate({left: '250px'}, animCompleted);
	}
    else{
        $('#hello').animate({left: '0px'}, animCompleted);
    }
  }
$( document ).ready(function() {
	$('#hello').animate({left: '250px'}, animCompleted);
});