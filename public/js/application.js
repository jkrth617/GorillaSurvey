$(document).ready(function() {

  $('#new_survey_form').on('click', function(event){
    event.preventDefault();
    var method = this.attr('method');
    var target_url = this.attr('action');
    var form_data = this.target.serialize();
    $.ajax({
      type: method,
      url: target_url,
      data: form_data
    }).done(function(response){

    }).fail(function(deffered){

    })
  })

});
