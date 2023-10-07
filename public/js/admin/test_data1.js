
var count = 0;

(function ($) {

   "use strict";

   //active
   // $('#test_data_link').addClass('active');

   $('#testdata').addClass('menu-open');
   $('#test_data_link').addClass('active');
   $('#test_data_2').addClass('active');
   // $('#test_data_1').addClass('active');
   // $('#tests_prices').addClass('active');

   //Medical reports datatables
   table = $('#test_data_table').DataTable({
      "lengthMenu": [[10, 25, 50, 100, 500, 1000, -1], [10, 25, 50, 100, 500, 1000, "All"]],
      dom: "<'row'<'col-sm-4'l><'col-sm-4'B><'col-sm-4'f>>" +
         "<'row'<'col-sm-12'tr>>" +
         "<'row'<'col-sm-4'i><'col-sm-8'p>>",
      buttons: [
         // {
         //    extend: 'copyHtml5',
         //    text: '<i class="fas fa-copy"></i> ' + trans("Copy"),
         //    titleAttr: 'Copy'
         // },
         {
            extend: 'excelHtml5',
            text: '<i class="fas fa-file-excel"></i> ' + trans("Excel"),
            titleAttr: 'Excel'
         },
         {
            extend: 'csvHtml5',
            text: '<i class="fas fa-file-csv"></i> ' + trans("CVS"),
            titleAttr: 'CSV'
         },
         {
            extend: 'pdfHtml5',
            text: '<i class="fas fa-file-pdf"></i> ' + trans("PDF"),
            titleAttr: 'PDF'
         },
         // {
         //    extend: 'colvis',
         //    text: '<i class="fas fa-eye"></i>',
         //    titleAttr: 'PDF'
         // }
      ],
      "processing": true,
      "serverSide": true,
      "order": [[1, "desc"]],
      "ajax": {
         url: url("admin/test_data"),
      },
      fixedHeader: true,
      "columns": [
         { data: 'DEVICE_ID1', name: 'DEVICE_ID1' },
         { data: 'PATIENT_ID_OPT', name: 'PATIENT_ID_OPT' },


         { data: 'PATIENT_NAME', name: 'PATIENT_NAME' },
         { data: 'RESULT_TEST_ID', name: 'RESULT_TEST_ID' },
         { data: "action", searchable: false, orderable: false, sortable: false }//action
      ],
      // "language": {
      //    "sEmptyTable": trans("No data available in table"),
      //    "sInfo": trans("Showing") + " _START_ " + trans("to") + " _END_ " + trans("of") + " _TOTAL_ " + trans("records"),
      //    "sInfoEmpty": trans("Showing") + " 0 " + trans("to") + " 0 " + trans("of") + " 0 " + trans("records"),
      //    // "sInfoFiltered": "(" + trans("filtered") + " " + trans("from") + " _MAX_ " + trans("total") + " " + trans("records") + ")",
      //    "sInfoPostFix": "",
      //    "sInfoThousands": ",",
      //    "sLengthMenu": trans("Show") + " _MENU_ " + trans("records"),
      //    "sLoadingRecords": trans("Loading..."),
      //    "sProcessing": trans("Processing..."),
      //    "sSearch": trans("Search") + ":",
      //    "sZeroRecords": trans("No matching records found"),
      //    "oPaginate": {
      //       "sFirst": trans("First"),
      //       "sLast": trans("Last"),
      //       "sNext": trans("Next"),
      //       "sPrevious": trans("Previous")
      //    },
      // }
   });



   //delete medical report
   $(document).on('click', '.delete_testdata', function (e) {
      e.preventDefault();
      var el = $(this);
      swal({
         title: trans("Are you sure to delete test data ?"),
         type: "warning",
         showCancelButton: true,
         confirmButtonClass: "btn-danger",
         confirmButtonText: trans("Delete"),
         cancelButtonText: trans("Cancel"),
         closeOnConfirm: false
      },
         function () {
            $(el).parent().submit();
         });
   });

})(jQuery);


// //analyses functions
// function check_analyses_all(el) {
//    var checked = $(el).prop('checked');

//    if (checked) {
//       $('.analyses_select').each(function () {
//          $(this).prop('checked', true);
//       });
//    }
//    else {
//       $('.analyses_select').each(function () {
//          $(this).prop('checked', false);
//       });
//    }

// }

// //print all analyses
// function print_analyses_all() {
//    $('.analyses_select').prop('checked', true);

//    $('#check_analyses_all').prop('checked', true);

//    var html = '';

//    $('.analyses_select:checked').parent().parent().find('.card-body').each(function () {

//       html += $(this).html();

//    });

//    print_analyses(html);
// }

// //print selected analyses
// function print_analyses_selected() {
//    var html = '';

//    $('.analyses_select:checked').parent().parent().find('.card-body').each(function () {

//       html += $(this).html();
//    });

//    print_analyses(html);

// }

//make all cultures selected
// function check_cultures_all(el) {
//    var checked = $(el).prop('checked');

//    if (checked) {
//       $('.cultures_select').each(function () {
//          $(this).prop('checked', true);
//       });
//    }
//    else {
//       $('.cultures_select').each(function () {
//          $(this).prop('checked', false);
//       });
//    }
// }

//print all cultures
// function print_cultures_all() {
//    var print_header = `<table class="printable_content" width="100%;">` + $('.page-header').html() + `<tbody><tr><td width="3%"></td><td><div class="content">`;
//    var print_footer = `</div></td><td width="3%"></td></tr></tbody>` + $('.page-footer').html() + '</table>';

//    $('.cultures_select').prop('checked', true);

//    $('#check_cultures_all').prop('checked', true);

//    var html = '';

//    $('.cultures_select:checked').parent().parent().find('.card-body').each(function () {

//       html += print_header;

//       html += $(this).html();

//       html += print_footer;

//    });

//    print_cultures(html);
// }

//print selected cultures
// function print_cultures_selected() {
//    var print_header = `<table class="printable_content" width="100%;">` + $('.page-header').html() + `<tbody><tr><td width="3%"></td><td><div class="content">`;
//    var print_footer = `</div></td><td width="3%"></td></tr></tbody>` + $('.page-footer').html() + '</table>';

//    var html = '';

//    $('.cultures_select:checked').parent().parent().find('.card-body').each(function () {
//       html += print_header;

//       html += $(this).html();

//       html += print_footer;

//    });

//    print_cultures(html);

// }


// //print cultures that have result
// function print_cultures_has_result() {
//    var print_header = `<table class="printable_content" width="100%;">` + $('.page-header').html() + `<tbody><tr><td width="3%"></td><td><div class="content">`;
//    var print_footer = `</div></td><td width="3%"></td></tr></tbody>` + $('.page-footer').html() + '</table>';

//    var html = '';

//    $('.cultures_select[value="has_entered"]').parent().parent().find('.card-body').each(function () {
//       html += print_header;

//       html += $(this).html();

//       html += print_footer;

//    });

//    print_cultures(html);
// }





function transferData(id) {

   jQuery.ajax({

      url: url("admin/testdata/cekpasien"),
      data: {
         'pasien_id': id
      },
      dataType: 'json',

      success: function (response) {
         if (response.status == 'tidak ada') {

            Swal.fire({
               title: 'Informasi',
               text: response.pesan,
               icon: 'warning',
            });

         } else {
            function loadTableData(id) {
               // Load the table data via AJAX and insert it into the SweetAlert modal
               jQuery.ajax({
                  url: url("admin/testdata/loadtabledata"),
                  dataType: 'html',
                  data: {
                     'pasien_id': id
                  },
                  success: function (data) {
                     Swal.fire({
                        title: 'Informasi',
                        html: '<div id="tableContainer">' + data + '</div>', // Container for the table
                        text: response.pesan,
                        icon: 'warning',
                        customClass: {
                           container: 'custom-swal-width' // Apply the custom CSS class to the modal
                        },
                        showCancelButton: true,
                        confirmButtonColor: '#d33',
                        cancelButtonColor: '#3085d6',
                        confirmButtonText: 'Yes, transfer !'
                     }).then((result) => {
                        if (result.isConfirmed) {
                           // Handle the transfer action if needed
                           var selectedData = [];
                           jQuery('input[name="pilih[]"]:checked').each(function () {
                              selectedData.push(jQuery(this).val());
                           });
                           console.log(selectedData);

                           // Now you can use the selectedData array to send the data via AJAX or perform other actions
                           if (selectedData.length > 0) {
                              jQuery.ajax({
                                 url: url("admin/testdata/senddata"),
                                 method: 'POST',
                                 data: {
                                    selectedData: selectedData,
                                    pasien_id: id
                                 },
                                 success: function (response) {
                                    Swal.fire('Success', 'Data has been transferred.', 'success');
                                 },
                                 error: function () {
                                    Swal.fire('Error', 'Failed to transfer data.', 'error');
                                 }
                              });
                           } else {
                              Swal.fire('Info', 'No checkboxes are selected.', 'info');
                           }
                        }
                     });
                  },
                  error: function () {
                     Swal.fire('Error', 'Failed to load table data', 'error');
                  }
               });
            }

            loadTableData(id);


         }


      },
   });
}