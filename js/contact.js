function SubmitFormData() {
    var name = $("#name").val();
    var email = $("#email").val();
    var subject = $("#subject").val();
    var message = $("#message").val();
    $.post("https://dhiraj-mail.000webhostapp.com/mailer.php", { name: name, email: email, subject:subject, message:message },
    function(responseText) {
     alert(responseText);
     console.log(responseText);
    });
}

// $.get('https://dhiraj-mail.000webhostapp.com/mailer.php', function(responseText) {
//     alert(responseText);
// });