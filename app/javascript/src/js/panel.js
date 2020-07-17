$(function(){
  $('.js-form').on('submit', function(e){
    e.preventDefault();
    //console.log(this);
    let formData = new FormData(this);
    let url = $(this).attr('action');
    //debugger;
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(panel){
      console.log(panel)
    })
  });
});