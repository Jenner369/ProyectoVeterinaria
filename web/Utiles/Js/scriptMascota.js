function ModificarDatos(datos) {
    $('#ModalModificar').modal('show');
    d = datos.split(',');
    $("#codigoMascotaM").val(d[0]);
    $("#InMNombre").val(d[1]);
    $("#InMRaza").val(d[2]);
    if (d[3] == "M") {
        document.querySelector('#RadioMachoM').checked = true;
    } else {
        document.querySelector('#RadioHembraM').checked = true;
    }
    $("#InMTipo").val(d[4]);
}

function EliminarMascota(EliminarDatos) {
    $('#ModalEliminar').modal('show');
    Data = EliminarDatos.split(',');
    $("#codigoMascotaE").val(Data[0]);
    $("#InENombre").val(Data[1]);
    $("#InERaza").val(Data[2]);
    if (Data[3] == "M") {
        document.querySelector('#RadioMachoE').checked = true;
    } else {
        document.querySelector('#RadioHembraE').checked = true;
    }
    $("#InETipo").val(Data[4]);
}

function ImagenMascota(ImagenMascota) {
    $('#ModalImagen').modal('show');
    DataImagen = ImagenMascota.split(',');
    $("#CodigoMascotaI").val(DataImagen[0]);
    console.log(DataImagen[1]);
    document.getElementById('ImagenMascota').src = "/Veterinaria/Utiles/Images/" + DataImagen[1];
}