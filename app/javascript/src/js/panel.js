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
    .done(function(data){
      //console.log(data)
      alert("データが追加されました")
      $('.submitbutton').prop("disabled", false);
      $('form')[1].reset();
    })
    .fail(function(){
      alert("送信エラーです")
      $('.submitbutton').prop("disabled", false);
    })

  });
});
