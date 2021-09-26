package Beans;

public class Beans_Cita {

    private int ID;
    private String FECHA;
    private double MONTO;
    private int CLIENTE_ID;
    private int VETERINARIO_ID;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getFECHA() {
        return FECHA;
    }

    public void setFECHA(String FECHA) {
        this.FECHA = FECHA;
    }

    public double getMONTO() {
        return MONTO;
    }

    public void setMONTO(double MONTO) {
        this.MONTO = MONTO;
    }

    public int getCLIENTE_ID() {
        return CLIENTE_ID;
    }

    public void setCLIENTE_ID(int CLIENTE_ID) {
        this.CLIENTE_ID = CLIENTE_ID;
    }

    public int getVETERINARIO_ID() {
        return VETERINARIO_ID;
    }

    public void setVETERINARIO_ID(int VETERINARIO_ID) {
        this.VETERINARIO_ID = VETERINARIO_ID;
    }

}
