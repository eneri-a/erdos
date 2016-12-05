document.addEventListener("turbolinks:load", function() {
  submitNewMessage();
//  submitImageMessage();
  clickMessageSubmit()
  scrollBottom();
  renderLastMessage();
  renderLastUsername();
  renderTyping();
})

function submitNewMessage(){

  $('textarea#message_content').keydown(function(event) {
    if (event.keyCode == 13) {
      $('#message_submit').click();
        return false;
     }
  });
}


function clickMessageSubmit(){
  $( "#message_submit" ).click(function() {
    $('#new_message').submit();
    $('#message_content').val("");
    return false;
  });
}

/*
function submitImageMessage(){
  $("#imgmessage").change(function(){
      $('#imgmessage_submit').click();
      $("#imgmessage").html($('#imgmessage').val());
      return false;
  });
}*/

function scrollBottom() {
    if ($('#messageContainer')[0]) {
      $("#messageContainer").animate({ scrollTop: $('#messageContainer')[0].scrollHeight });
    }
}
