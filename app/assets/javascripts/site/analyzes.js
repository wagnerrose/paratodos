
$(document).ready(function() {
  $(document).on("change", "#sel_state", function(){
    var state = $(this).val();
    $("#sel_county").prop('disabled', false);
    $("#btn_procura").prop('disabled', false);
    $.ajax({
      url: "./index",
      method: "GET",
      dataType: "json",
      data: {state: state},
      error: function (xhr, status, error) {
        console.error('AJAX Error: ' + status + error);
      },
      success: function (response) {
        console.log(response);
        var counties = response["counties"];
        console.log(counties[0]["county"]["id"]);
        $("#sel_county").empty();
        $("#sel_county").append('<option>Selecione Localidade</option>');
        for(var i=0; i< counties.length; i++){
          $("#sel_county").append('<option value="' + counties[i]["county"]["id"] + '">' + counties[i]["county"]["name"] + '</option>');
        }
      }
    });
  });
});
