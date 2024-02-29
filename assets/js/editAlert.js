Swal.fire({
    icon: 'success',
    title: 'Record Updated!',
    text: 'Record has been updated successfully!',
}).then(function () {
    window.location = "./loader.php";
});