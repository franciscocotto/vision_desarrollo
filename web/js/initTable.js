$(document).ready(function () {
    datatable();
    datatable2();
    datetimepicker();
});

var datatable = function () {

  var t = $('.table.tabler').DataTable({
      'sScrollX': "100%",
      'lengthMenu': [[5, 10, 15, -1], [5, 10, 15, "Todos"]],
      'scrollX': true,
      'ordering': false,
      'bAutoWidth': false,
      	  'columnDefs': [
            { width: '20%', targets: 0 }
        ],
        'fixedColumns': true
    
//        'columnDefs': [{       
//            'searchable': false,
//            'orderable': false,
//            'targets': 0,
//            'scrollCollapse': true,       
//        }],
//        'order': [[ 1, 'asc' ]]
         }).each();
        t.columns.adjust();
        t.on('order.dt search.dt', function (){
             t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                  cell.innerHTML = i+1;
             });
         }).draw();
//   $('.table.tabler').not('.loadJson').each(function () {
//        $(this).DataTable({
//            'scrollX': true,
//            'ordering': false,
//            "searching": false,           
//            "bLengthChange": false,
//            'scrollCollapse': true,
//        
//        });
//         
//       
//    });
};

var datatable2 = function () {

  var t = $('.table2.tabler').DataTable({
      'sScrollX': "100%",
      'searching': false,
      'lengthMenu': [[5, 10, 15, -1], [5, 10, 15, "Todos"]],
      'scrollX': true,
      'ordering': false
//        'columnDefs': [{       
//            'searchable': false,
//            'orderable': false,
//            'targets': 0,
//            'scrollCollapse': true,       
//        }],
//        'order': [[ 1, 'asc' ]]
         }).each();
 
        t.on('order.dt search.dt', function (){
             t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                  cell.innerHTML = i+1;
             });
         }).draw();
//   $('.table.tabler').not('.loadJson').each(function () {
//        $(this).DataTable({
//            'scrollX': true,
//            'ordering': false,
//            "searching": false,           
//            "bLengthChange": false,
//            'scrollCollapse': true,
//        
//        });
//         
//       
//    });
};



var datetimepicker = function () {
    $('.datetimePicker').each(function () {
        $(this).datetimepicker({
            'format': 'DD/MMM/YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true
        });
    });
};
