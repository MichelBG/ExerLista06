package model;

public class PessoaJuridica  extends Cliente {

    private String cnpj;
    private String raz_social;



    public String getCnpj() {
        return this.cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRaz_social() {
        return this.raz_social;
    }

    public void setRaz_social(String raz_social) {
        this.raz_social = raz_social;
    }

    
}