package model;

public class PessoaFisica extends Cliente {


    private String cpf;
    private String data_nasc;



    public String getCpf() { 
        return this.cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getData_nasc() {
        return this.data_nasc;
    }

    public void setData_nasc(String data_nasc) {
        this.data_nasc = data_nasc;
    }


    
}