$(document).ready(function() {
  $('#save-all').hide();

  $('#new_survey_form').on('submit', function(event){
    event.preventDefault();
    // debugger;
    var method = $(this).attr('method');
    var target_url = $(this).attr('action');
    var form_data = $(this).serialize();
    $.ajax({
      type: method,
      url: target_url,
      data: form_data
    }).done(function(response){
      // debugger;
      $('#question-containter').append(response);
      $('#survey-title-submit').hide();
      $('#save-all').show();
    })
    // no fail and also no hide. now whenever you click that button another question will be appended to the bottom
  })

  $('#question-containter').on('submit', '#new_question_form', function(event){
    event.preventDefault();
    var method = $(this).attr('method');
    var target_url = $(this).attr('action');
    var form_data = $(this).serialize();
    $.ajax({
      type: method,
      url: target_url,
      data: form_data
    }).done(function(response){
      $('#question-containter').append(response)
      $('.question-save').hide();
    }).fail(function(deffered){

    })
  })

  $('#question-containter').on('submit', '#new_choice_form', function(event){
    event.preventDefault();
    var method = $(this).attr('method');
    var target_url = $(this).attr('action');
    var form_data = $(this).serialize();
    $.ajax({
      type: method,
      url: target_url,
      data: form_data
    }).done(function(response){
      $('.choice-save').hide();
      $('#question-containter').append(response)


    }).fail()
  })

});
