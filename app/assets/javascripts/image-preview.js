$(function() {
  $('#mainImagePreview input:file').uploadThumbs();

  $('#subImagePreview input:file').uploadThumbs();

   $('#mainImagePreview input:file').change(function() {
    $('#preImg').remove();
  });

   $('#subImagePreview input:file').change(function() {
    $('#preSubImg').remove();
   });
 });

    $(function() {
      $('#newViewPlus').click(function() {
        $(this).remove();
        $('#invisibleBlock').css('display', 'block');
        $('#invisibleBlock input:file').uploadThumbs();
      });
    });

    $(function() {
      if ($('#editViewList1')) {
        $('#editViewList1').css('display', 'none');
      };

      if ($('#editViewList2')) {
        $('#editViewList2').css('display', 'none');
      };


      $('.editViewPlus').click(function() {
        var listID = $(this).parent('li').attr('id');

        $(this).remove();
        $('.invisibleBlock').css('display', 'block');
        $('.invisibleBlock input:file').uploadThumbs();

        if (listID == "editViewList0") {
          $('#editViewList1').css('display', 'block');
          $('#editViewList1').children('.image-upload').css('display', 'none');
        } else if (listID == "editViewList1") {
          $('#editViewList2').css('display', 'block');
          $('#editViewList2').children('.image-upload').css('display', 'none');
        };
      });
    });



