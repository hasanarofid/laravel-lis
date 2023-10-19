(function ($) {

   "use strict";

   //patients datatable
   table = $('#ruangan_table').DataTable({
      "lengthMenu": [[10, 25, 50, 100, 500, 1000, -1], [10, 25, 50, 100, 500, 1000, "All"]],

      "processing": true,
      "serverSide": true,
      "order": [[1, "desc"]],
      fixedHeader: true,
      "ajax": {
         url: url("admin/get_ruangan")
      },
      fixedHeader: true,
      "columns": [
         { data: "code", orderable: false, sortable: false },
         { data: "name", orderable: false, sortable: false },
         { data: "status", orderable: false, sortable: false },
         { data: "action", searchable: false, orderable: false, sortable: false }//action
      ],
      "language": {
         "sEmptyTable": trans("No data available in table"),
         "sInfo": trans("Showing") + " _START_ " + trans("to") + " _END_ " + trans("of") + " _TOTAL_ " + trans("records"),
         "sInfoEmpty": trans("Showing") + " 0 " + trans("to") + " 0 " + trans("of") + " 0 " + trans("records"),
         "sInfoFiltered": "(" + trans("filtered") + " " + trans("from") + " _MAX_ " + trans("total") + " " + trans("records") + ")",
         "sInfoPostFix": "",
         "sInfoThousands": ",",
         "sLengthMenu": trans("Show") + " _MENU_ " + trans("records"),
         "sLoadingRecords": trans("Loading..."),
         "sProcessing": trans("Processing..."),
         "sSearch": trans("Search") + ":",
         "sZeroRecords": trans("No matching records found"),
         "oPaginate": {
            "sFirst": trans("First"),
            "sLast": trans("Last"),
            "sNext": trans("Next"),
            "sPrevious": trans("Previous")
         },
      }
   });

   //active
   $('#ruangans').addClass('active');



   //delete patient
   $(document).on('click', '.delete_ruangan', function (e) {
      e.preventDefault();
      var el = $(this);
      swal({
         title: trans("Are you sure to delete ruangan ?"),
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

