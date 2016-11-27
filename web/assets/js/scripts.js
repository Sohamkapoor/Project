
jQuery(document).ready(function () {

    $("#datepicker").datepicker({dateFormat: 'mm/dd/yy',
        changeMonth: true,
        changeYear: true,
        yearRange: '-100y:c+nn',
        maxDate: '-18y'});


    /*
     Fullscreen background
     */
    $.backstretch("assets/img/backgrounds/1.jpg");

    $('#top-navbar-1').on('shown.bs.collapse', function () {
        $.backstretch("resize");
    });
    $('#top-navbar-1').on('hidden.bs.collapse', function () {
        $.backstretch("resize");
    });

    /*
     Form
     */
    $('.registration-form fieldset:first-child').fadeIn('slow');

    $('.registration-form input[type="password"]').on('focus', function () {
        $(this).removeClass('error');
    });


    $("#form-first-name").keypress(function () {
        $('#errFirstName').text('');
    });
    $("#form-last-name").keypress(function () {
        $('#errLastName').text('');
    });
    $("#form-mob").keypress(function () {
        $('#errMessage').text('');
    });
    $("#datepicker").click(function () {
        $('#errDOB').text('');
    });
    $("#form-father-name").keypress(function () {
        $('#errFatherName').text('');
    });
    $("#form-mother-name").keypress(function () {
        $('#errMotherName').text('');
    });
    $("#form-address").keypress(function () {
        $('#errAddress').text('');
    });
    $("#form-pincode").keypress(function () {
        $('#errPinCode').text('');
    });



    // next step
    $('.registration-form .btn-next').on('click', function () {
        var formFirstName = document.getElementById("form-first-name").value;
        var formLastName = document.getElementById("form-last-name").value;
        var formNumber = document.getElementById('form-mob').value.trim();
        var formDOB = document.getElementById('datepicker').value;
        var formFatherName = document.getElementById('form-father-name').value;
        var formMotherName = document.getElementById('form-mother-name').value;
        var formAddress = document.getElementById('form-address').value;
        var formPinCode = document.getElementById('form-pincode').value.trim();

        var next_step = false;
        var spaceCheck = "";

        var parent_fieldset = $(this).parents('fieldset');

        //blank
        var IndNum = /^[0]?[789]\d{9}$/;
        var pinCodeRegx = /^[1-9][0-9]{5}$/;

        var blankValidate = false;
        var mobileValidate = false;
        var pinCodeValidate = false;

        switch (spaceCheck) {
            case formFirstName:
                $('#errFirstName').text('Please enter first Name');
                break
            case formLastName:
                $('#errLastName').text('Please enter Last Name');
                break;
            case formNumber:
                $('#errMessage').text('Please enter Mobile Number');
                break;
            case formDOB:
                $('#errDOB').text('Please enter DOB');
                break;
            case formFatherName:
                $('#errFatherName').text('Please enter Father\'s Name');
                break;
            case formMotherName:
                $('#errMotherName').text('Please enter Mother\'s Name');
                break;
            case formAddress:
                $('#errAddress').text('Please enter Address');
                break;
            case formPinCode:
                $('#errPinCode').text('Please enter PinCode');
                break;
            default:
                blankValidate = true;
        
        }

        //Indian Mobile Number Validation
        if (IndNum.test(formNumber)) {
            mobileValidate = true;
        } else {
            $('#errInvalidMobileMessage').text('please enter valid mobile number');
            document.getElementById('form-mob').focus();

        }
        //Indian PinCode Validation
        if (pinCodeRegx.test(formPinCode)) {
            pinCodeValidate = true;
        } else {
            $('#errPinCode').text('Please enter Correct PinCode');
            document.getElementById('form-pincode').focus();

        }

        //Proceed to next form
        if (pinCodeValidate && mobileValidate && blankValidate)
        {
            next_step = true;
            $('#errFirstName').text('');
            $('#errLastName').text('');
            $('#errMessage').text('');
            $('#errInvalidMobileMessage').text('');
            $('#errDOB').text('');
            $('#errFatherName').text('');
            $('#errMotherName').text('');
            $('#errAddress').text('');
            $('#errPinCode').text('');

        } else
        {
            next_step = false;

        }

        parent_fieldset.find('input[type="password"]').each(function () {
            if ($(this).val() == "") {
                $(this).addClass('error');
                next_step = false;
            } else {
                $(this).removeClass('error');
            }
        });

        if (next_step) {
            parent_fieldset.fadeOut(400, function () {
                $(this).next().fadeIn();
            });
        }

    });

    // previous step
    $('.registration-form .btn-previous').on('click', function () {

        $(this).parents('fieldset').fadeOut(400, function () {
            $(this).prev().fadeIn();
        });
    });

    // submit
    $('.registration-form').on('submit', function (e) {

        $(this).find('input[type="password"]').each(function () {
            if ($(this).val() == "") {
                e.preventDefault();
                $(this).addClass('error');
            } else {
                $(this).removeClass('error');
            }
        });

    });


});
