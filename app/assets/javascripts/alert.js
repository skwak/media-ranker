$(document).ready(function() {
  $(".delete-button").click(function() {
    var answer = confirm("Are you sure?");
    if (answer) {
      return true;
    }
    else {
      return false;
    }
  });
});
