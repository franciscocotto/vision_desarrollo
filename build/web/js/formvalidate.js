$(document).ready(function () {

$('#save-admin').click(function () {
    // BootstrapDialog.alert('Favor Completar los Campos Requeridos');     
         //BootstrapDialog.danger('Favor Completar los Campos Requeridos');
           //BootstrapDialog.warning('Favor Completar los Campos Requeridos');
           //BootstrapDialog.success('Favor Completar los Campos Requeridos');
            BootstrapDialog.confirm('¿Está Seguro que desee Guardar los Cambios Realizados?');
    });

    $('.resette').on('hidden.bs.modal', function (e) {
        $(this).find("input,select").val('').end();
        var validator = $(".resetform").validate();
        validator.resetForm();
        $('.resetform .form-group').removeClass('has-error error');
    });


    $('#agregar-submit').click(function () {
        $("#agregaruser").validate();
    });
    
     $('#editar-submit').click(function () {
        $("#editaruser").validate();
    });


 $('#busqueda-input').click(function () {
        $("#search-bit").validate();
    });


    });