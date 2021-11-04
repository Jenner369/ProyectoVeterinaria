document.addEventListener('DOMContentLoaded', async function () {
    var calendarEl = document.getElementById('calendar');
    let listData = await getDataCalendar();
    //console.log(listData.length);
    var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'timeGridWeek',
        initialDate: '2021-07-07',
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'Nuevo dayGridMonth,timeGridWeek,timeGridDay'
        },
        locale: 'es',
        eventSources: [{
                events: listData,
                color: "#0275d8"
            }],
        eventClick: function (info) {
            $("#modalEjemplo").modal('show');
            $("#ModalTitle").text(info.event.title);

            for (const key in listData) {
                if (key["id"] == info.event.id) {
                    $("#ModalDescription").text(key["description"]);
                }
            }
            $("#ModalStart").text("Inicio: " + formatDate(info.event.start));
            $("#ModalEnd").text("Fin: " + formatDate(info.event.end));
            $("#updateButton").attr('onclick', "redirect('modificar'," + info.event.id + ")");
            $("#deleteButton").attr('onclick', "redirect('eliminar'," + info.event.id + ")");
        },
        eventMouseEnter: function (info) {
            $(info.el).addClass("bg-danger");
            $(info.el).addClass("border border-danger");
            $(info.el).css('cursor', 'pointer');

        },
        eventMouseLeave: function (info) {
            $(info.el).removeClass("bg-danger");
            $(info.el).removeClass("border border-danger");
            $(info.el).css('cursor', 'none');
        },
        customButtons: {
            Nuevo: {
                text: "Agregar",
                click: function () {
                    let url = 'Cliente/ReservaCita.jsp';
                    $(window).attr('location', url);
                }
            }
        }
    });

    calendar.render();
});
function getDataCalendar() {
    return new Promise(resolve => {
        let listData = [];
        $.getJSON(
                'Servlet_Calendar',
                function (events) {
                    $.each(events, function (index, event) {
                        var title = event.ID;
                        var id = event.ID;
                        var start = event.ENTRADA;
                        var end = event.SALIDA;
                        var desc = event.DESCRIPCION;
                        listData.push({
                            "title": title,
                            "description": desc,
                            "start": start,
                            "end": end,
                            "id": id
                        });
                    });
                }
        ).done(function () {
            console.log(listData.length);
            resolve(listData);
        });
    });
}
function formatDate(date) {
    return date.getDate() + "-" + date.getMonth() + "-" + date.getFullYear() + " " + ('0' + date.getHours()).slice(-2) + ":" + ('0' + date.getMinutes()).slice(-2) + ":" + ('0' + date.getSeconds()).slice(-2) + ' ' + (date.getHours() < 12 ? 'AM' : 'PM');
}

function redirect(tipo, idCita) {
    if (tipo === 'modificar') {
        let url = 'Cliente/ModificarCita.jsp';
        url = url + '?idCita=' + idCita;
        $(window).attr('location', url);
    } else if (tipo === 'eliminar') {
        let url = 'Cliente/EliminarCita.jsp';
        url = url + '?idCita=' + idCita;
        $(window).attr('location', url);
    }
}