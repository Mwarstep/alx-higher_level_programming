$(document).ready(function () {
  $('input#btn_translate').click(fetchTranslation);
  $('input#language_code').keyup(function (event) {
    if (event.keyCode === 13) {
      fetchTranslation();
    }
  });

  function fetchTranslation() {
    const languageCode = $('input#language_code').val();
    $.getJSON(
      `https://fourtonfish.com/hellosalut/hello/?lang=${languageCode}`,
      function (data) {
        $('#hello').text(data.hello);
      }
    );
  }
});
