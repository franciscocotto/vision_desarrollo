$(document).ready(function () {
    datetimepicker();
    datetimepicker2();
    dateyearpicker();
    datemonthpicker();
    datenowyearpicker();
    numerodecimal();
    select();
    tooltip();
    letras();
    fechas();
    alfanumericos();
    dui();
    nit();
    alfanumayus();
    numeros();
    numerosentero();
   // card();
    direcciones();
    ndecimales();
    alfanumtildes();
    dateagepicker();
    dateagenowPicker();
    dateagenowPickermodal();
    maskmoney();
    maskmoney2();
    amount();
    $('.dateagePicker').find("input").val('').end();
});

var datetimepicker = function () {
    $('.datetimePicker').each(function () {
        $(this).datetimepicker({
            'format': 'DD/MMM/YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true
        });
    });
};

var day = new Date();
var lastAge = new Date(day.getFullYear() - 16, day.getMonth(), day.getDate());
var dateagepicker = function () {
    $('.dateagePicker').each(function () {
        $(this).datetimepicker({
           'format': 'DD/MMM/YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true,
            'maxDate': lastAge,
            
        });
    });
};


var dateagenowPicker = function () {
    $('.dateagenowPicker').each(function () {
        $(this).datetimepicker({
            'maxDate': 'now',
            'format': 'DD/MMM/YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true
        });
    });
};

var dateagenowPickermodal = function () {
    $('.dateagenowPickermodal').each(function () {
        $(this).datetimepicker({
            'maxDate': 'now',
            'format': 'DD/MMM/YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true,
            widgetPositioning: {
              horizontal: "auto",
              vertical: "auto"
            }
           
        });
    });
};
var today = new Date();
var lastDate = new Date(today.getFullYear() + 1, 11, 31);
var dateyearpicker = function () {
    $('.dateyearPicker').each(function () {
        $(this).datetimepicker({
            'format': 'YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true,
            'maxDate': lastDate,
        });
    });
};


var select = function () {
        $('#select-all').click(function(event) {   
            if(this.checked) {
                // Iterate each checkbox
                $(':checkbox').each(function() {
                    this.checked = true;                        
                });
            } else {
                $(':checkbox').each(function() {
                    this.checked = false;                       
                });
            }
        });
};

var datemonthpicker = function () {
    $('.datemonthPicker').each(function () {      
        $(this).datetimepicker({
            'format': 'MMMM',
            'ignoreReadonly': true,
            'allowInputToggle': true,
        });
        });
};


var datenowyearpicker = function () {
    $('.datenowyearpicker').each(function () {
        $(this).datetimepicker({
            'format': 'YYYY',
            'ignoreReadonly': true,
            'allowInputToggle': true,
            'maxDate': 'now',
        });
    });
};

var datetimepicker2 = function () {
    $('.datetimepickera').datetimepicker({
        format: 'DD/MM/YYYY',
        ignoreReadonly: true,
        allowInputToggle: true
    });
    $('.datetimepickerb').datetimepicker({
        useCurrent: false,
        ignoreReadonly: true,
        allowInputToggle: true,
        format: 'DD/MM/YYYY'
    });
    $(".datetimepickera").on("dp.change", function (e) {
        $('.datetimepickerb').data("DateTimePicker").minDate(e.date);
    });
    $(".datetimepickerb").on("dp.change", function (e) {
        $('.datetimepickera').data("DateTimePicker").maxDate(e.date);
    });
};

var numerodecimal = function () {
    $(".decimal").each(function () {
        formatdecimal(this);
    });
};
var formatdecimal = function (objdecimal) {
    $(objdecimal).keypress(function (event) {
        var decim = "";
        var dec = "";
        var deci = "";
        var datosdeci = "";
        var codigo = getKeyCodes(event);
        if (codigo === 37 || codigo === 39) {
            return true;
        }
        if (codigo === 45 && objdecimal.selectionStart === 0) {
            return true;
        } else
            if (($(objdecimal).val().indexOf(".") > -1) || ($(objdecimal).val() == "")) {
                if (codigo > 96 && codigo < 123) {
                    return (codigo == 8);
                } else {
                    deci = $(objdecimal).val().split(".");
                    dec = deci[1];
                    if (isUndefinedOrNull(dec)) {
                        return (codigo > 47 && codigo < 58 || codigo === 8);
                    } else {
                        decim = dec.toString().length;
                        datosdeci = $(objdecimal).data("ndecimal");
                        if (!isUndefinedOrNull(datosdeci)) {
                            if (decim < datosdeci) {
                                return (codigo > 47 && codigo < 58 || codigo == 8);
                            } else {
                                return (codigo === 8);
                            }
                        } else {
                            return (codigo > 47 && codigo < 58 || codigo == 8);
                        }
                    }
                }
            } else {
                return (codigo > 47 && codigo < 58 || codigo == 8 || codigo == 46);
            }

    });

    $(objdecimal).keyup(function (ev) {
        var Valor = $(this).val();
        var a = Valor.split('.');
        var index;
        var limit;
        if (a.length == '2' && nDecimales > 0 && a[1].length > nDecimales) {
            index = parseFloat($(this).val().indexOf("."));
            if (index <= 9) {
                limit = index + parseFloat(nDecimales) + 1;
                $(this).val($(this).val().substring(0, limit));
            }
        } else
            if (nDecimales == 0) {
                $(this).val($(this).val().replace(".", ""));
            }
    });
};


var Decimal = function (objdecimal) {
    var nDecimales = "";
    var flagPunto = "";
    var ret = "";
    var keynum = "";
    nDecimales = $(objdecimal).data("ndecimal");
    $(objdecimal).keypress(function (event) {
        var Code = getKeyCodes(event);

        keynum = getKeyCodes(event);
        if (Code === 39 || Code === 37) {
            return true;
        }
        flagPunto = $(this).val().split(".");
        if (Code === 45 && objdecimal.selectionStart === 0) {
            if ($(this).val().indexOf("-") > -1) {
                return (Code > 47 && Code < 58 || Code === 8 || Code === 9);
            } else {
                return (Code > 47 && Code < 58 || Code === 8 || Code === 9 || Code === 45);
            }
        }
        if (keynum > 47 && keynum < 58 || keynum == 0 || keynum == 8) {
            ret = true;
        } else if (keynum == 46 && flagPunto.length < 2) {
            ret = true;
        } else {
            ret = false;
        }
        return ret;
    });

    $(objdecimal).keyup(function (ev) {
        var Valor = $(this).val();
        var a = Valor.split('.');
        var index;
        var limit;
        if (a.length == '2' && nDecimales > 0 && a[1].length > nDecimales) {
            index = parseFloat($(this).val().indexOf("."));
            if (index <= 9) {
                limit = index + parseFloat(nDecimales) + 1;
                $(this).val($(this).val().substring(0, limit));
            }
        } else
            if (nDecimales == 0) {
                $(this).val($(this).val().replace(".", ""));
            }
    });
};
var ndecimales = function () {
    $(".ndecimales").maskMoney();
};

var nmoney = function () {
    $(".money2").on({
        "focus": function (event) {
            $(event.target).select();
        },
        "keyup": function (event) {
            $(event.target).val(function (index, value) {
                return value.replace(/\D/g, "")
                  .replace(/([0-9])([0-9]{2})$/, '$1,$2')
               //   .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
            });
        }
    });
};
function nDecimales() { }

//var datatable = function () {
//
//    $('#addsuplementos').on('shown.bs.modal', function () {
//        var dataTable = $('#suplementosTable').DataTable();
//        dataTable.columns.adjust();
//    });
//
//    $('#showproductos').on('shown.bs.modal', function () {
//        var dataTable = $('.productosTable').DataTable();
//        dataTable.columns.adjust();
//    });
//
//    $('#showquestion').on('shown.bs.modal', function () {
//        var dataTable = $('.preguntastable').DataTable();
//        dataTable.columns.adjust();
//    });
//
//
//    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
//        $.fn.dataTable.tables({ 'visible': true, 'api': true }).columns.adjust();
//    });
//
//    $('.table.tabler').not('.loadJson').each(function () {
//        $(this).DataTable({
//            'scrollX': true,
//            'ordering': false,           
//            "bLengthChange": false,
//            'scrollCollapse': true,
//        });
//    });
//};

var tooltip = function () {
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
};

var letras = function () {
    $(".letra").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            if (Code > 64 && Code < 91 || Code == 8 || Code == 32) {
                return true;
            } else
                if (Code > 96 && Code < 123 || Code == 8 || Code == 32) {
                    return true;
                } else {
                    return false;
                }
        });
    });
};

var fechas = function () {
    $('.fecha').each(function () {
        $(this).mask('00/00/0000');
    });
};

var maskmoney = function (){
$(".maskmoney").on('blur', function () {
    console.log($(this).val());
    $(this).val(format2(parseFloat($(this).val()), "$"));

});

//function format2(n, currency) {
//    return currency + " " + n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
//}

};

var maskmoney2 = function () {
    $(".maskmoney2").on('blur', function () {
        console.log($(this).val());
        $(this).val(format3(parseFloat($(this).val())));

    });

    function format3(n) {
        return "" + n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,");
    }

};
var alfanumayus = function () {
    $(".alfamayus").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            if (Code > 64 && Code < 91 || Code == 8 || Code == 32) {
                return true;
            } else
                if (Code > 47 && Code < 58 || Code == 8 || Code == 32) {
                    return true;
                } else {
                    return false;
                }
        });
    });
};

var alfanumtildes = function () {
    $(".alfanumtilde").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            if (Code > 64 && Code < 91
                || Code == 8
                || Code == 32
                || Code == 209
                || Code == 241
                || Code == 225
                || Code == 233
                || Code == 237
                || Code == 243
                || Code == 250
                || Code == 193
                || Code == 250
                || Code == 201
                || Code == 205
                || Code == 211
                || Code == 218) {
                return true;
            } else
                if (Code > 96 && Code < 123 || Code == 8 || Code == 32) {
                    return true;
                } else
                    if (Code > 47 && Code < 58 || Code == 8 || Code == 32) {
                        return true;
                    } else {
                        return false;
                    }
        });
    });
}

var alfanumericos = function () {
    $(".alfanumerico").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            if (Code > 64 && Code < 91 || Code == 8 || Code == 32 || Code == 45) {
                return true;
            } else
                if (Code > 96 && Code < 123 || Code == 8 || Code == 32) {
                    return true;
                } else
                    if (Code > 47 && Code < 58 || Code == 8 || Code == 32) {
                        return true;
                    } else {
                        return false;
                    }
        });
    });
};

var direcciones = function () {
    $(".direcciones").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            if (Code > 64 && Code < 91
                || Code > 39 && Code < 47
                || Code == 8
                || Code == 32
                || Code == 45
                || Code == 35
                || Code == 34
                || Code == 39
                || Code == 58) {
                return true;
            } else
                if (Code > 96 && Code < 123 || Code == 8 || Code == 32) {
                    return true;
                } else
                    if (Code > 47 && Code < 58 || Code == 8 || Code == 32) {
                        return true;
                    } else {
                        return false;
                    }
        });
    });
};

var numeros = function () {
    $(".numero").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
             if ((Code >= 48 && Code <= 57) || (Code == 8))
                return true;
            else if (Code == 46) {
                var curVal = document.activeElement.value;
                if (curVal != null && curVal.trim().indexOf('.') == -1)
                    return true;
                else
                    return false;
            }
            else
                return false;
        });
    });
};

var numerosentero = function () {
    $(".numeroentero").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
              return (Code > 47 && Code < 58 || Code == 8);
        });
    });
};

var card = function () {
    $(".card").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            return (Code > 47 && Code < 58 || Code == 8);
        });
    });
};

var amount = function () {
    $(".amount").each(function () {
        $(this).keypress(function (event) {
            var Code = getKeyCodes(event);
            return (Code > 47 && Code < 58 || Code == 8 || Code == 44 || Code == 46);
        });
    });
};


var dui = function () {
   $('.dui').mask('00000000-0');
};

var nit = function () {
   $('.nit').mask('0000-000000-000-0');
};
var getKeyCodes = function (e) {
    var Cod = "";
    if (e.which) {
        Cod = e.which;
    } else
        if (e.keyCode) {
            Cod = e.keyCode;
        } else
            if (e.charCode) {
                Cod = e.charCode;
            }
    return Cod;
};

var isUndefinedOrNull = function (o) {
    return (!o || o === null || o === undefined);
};


