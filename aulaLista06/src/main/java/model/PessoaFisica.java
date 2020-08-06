package model;

public class PessoaFisica  extends Cliente{

    private String cpf;
    private String dataNasc;


    public PessoaFisica() {

    }

    public PessoaFisica(String cpf, String dataNasc) {
        this.cpf = cpf;
        this.dataNasc = dataNasc;
    }



    public String getCpf() {
        return this.cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getDataNasc() {
        return this.dataNasc;
    }

    public void setDataNasc(String dataNasc) {
        this.dataNasc = dataNasc;
    }
        
    



    
}