package Beans;

public class Beans_DetalleCita {

    private int Id_Cita;
    private int Id_Servicio;
    private int Id_Mascota;
    private String descripcion;
    private double submonto;

    public int getId_Cita() {
        return Id_Cita;
    }

    public void setId_Cita(int Id_Cita) {
        this.Id_Cita = Id_Cita;
    }

    public int getId_Servicio() {
        return Id_Servicio;
    }

    public void setId_Servicio(int Id_Servicio) {
        this.Id_Servicio = Id_Servicio;
    }

    public int getId_Mascota() {
        return Id_Mascota;
    }

    public void setId_Mascota(int Id_Mascota) {
        this.Id_Mascota = Id_Mascota;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getSubmonto() {
        return submonto;
    }

    public void setSubmonto(double submonto) {
        this.submonto = submonto;
    }
    
    
}
