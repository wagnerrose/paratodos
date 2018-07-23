$(document).on("change", "#localidade_state", function(){
  var state = $(this).val();
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
      $("#localidade_county").empty();

      $("#localidade_county").append('<option>Selecione Localidade</option>');
      for(var i=0; i< counties.length; i++){
        $("#localidade_county").append('<option value="' + counties[i]["id"] + '">' + counties[i]["name"] + '</option>');
      }
    }
  });
});
