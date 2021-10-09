package Beans;

public class Beans_Cita {

    private int ID;
    private String ENTRADA;
    private String SALIDA;
    private double MONTO;
    private String DESCRIPCION;
    private int MASCOTA_ID;
    private int SERVICIO_ID;
    private int VETERINARIO_ID;

    public int getSERVICIO_ID() {
        return SERVICIO_ID;
    }

    public void setSERVICIO_ID(int SERVICIO_ID) {
        this.SERVICIO_ID = SERVICIO_ID;
    }
    
    public String getDESCRIPCION() {
        return DESCRIPCION;
    }

    public void setDESCRIPCION(String DESCRIPCION) {
        this.DESCRIPCION = DESCRIPCION;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getENTRADA() {
        return ENTRADA;
    }

    public void setENTRADA(String ENTRADA) {
        this.ENTRADA = ENTRADA;
    }

    public String getSALIDA() {
        return SALIDA;
    }

    public void setSALIDA(String SALIDA) {
        this.SALIDA = SALIDA;
    }

    public double getMONTO() {
        return MONTO;
    }

    public void setMONTO(double MONTO) {
        this.MONTO = MONTO;
    }

    public int getMASCOTA_ID() {
        return MASCOTA_ID;
    }

    public void setMASCOTA_ID(int MASCOTA_ID) {
        this.MASCOTA_ID = MASCOTA_ID;
    }

    public int getVETERINARIO_ID() {
        return VETERINARIO_ID;
    }

    public void setVETERINARIO_ID(int VETERINARIO_ID) {
        this.VETERINARIO_ID = VETERINARIO_ID;
    }
    
}
