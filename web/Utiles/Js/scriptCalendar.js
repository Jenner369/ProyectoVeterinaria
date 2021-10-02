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
            $("#ModalDescription").text(info.event.description);            
            $("#ModalStart").text("Inicio: "+formatDate(info.event.start));
            $("#ModalEnd").text("Fin: "+formatDate(info.event.end));
        },
        eventMouseEnter: function (info) {
           $(info.el).addClass("bg-secondary");
        },
        eventMouseLeave: function (info) {
           $(info.el).removeClass("bg-secondary");
         
        },
        customButtons: {
            Nuevo: {
                text: "Agregar",
                click: function () {
                    alert("Paso");
                }
            },
            Modificar: {
                text: "Modificar",
                click: function () {
                    alert("Paso");
                }
            },
            Eliminar: {
                text: "Eliminar",
                click: function () {
                    alert("Paso");
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
                            "id": id,
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
  return date.getDate() + "-" + date.getMonth() + "-" + date.getFullYear() + " " +  ('0' + date.getHours()).slice(-2) + ":" + ('0' + date.getMinutes()).slice(-2) + ":" + ('0' + date.getSeconds()).slice(-2) + ' ' + (date.getHours() < 12 ? 'AM' : 'PM');
}