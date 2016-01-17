$(function() {
  $('#mainImagePreview input:file').uploadThumbs();

  $('#subImagePreview input:file').uploadThumbs();

   $('#mainImagePreview input:file').change(function() {
    $('#mainImagePreview #preImg').remove();
  });

   $('#subImagePreview input:file').change(function() {
    $('#preSubImg').remove();
   });
});


