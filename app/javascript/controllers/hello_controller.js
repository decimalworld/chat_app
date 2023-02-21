import { Controller } from "@hotwired/stimulus"

const scroll_bottom = function () {
  if ($('#messages').length >0) {
    $('#messages').scrollTop($('#messages')[0].scrollHeight);
  }
}

const submit_messages = function () {
  $('#message-body').on('keyup', function(e) {
    if (e.keyCode == 13) {
      e.target.value="";
    }
  })
};

export default class extends Controller {
  connect() {
    $('.ui.dropdown')
      .dropdown();
    $('.message .close').on('click', function() {
      $(this)
        .closest('.message')
        .remove();
    });
    scroll_bottom();
    submit_messages();
  }
}
