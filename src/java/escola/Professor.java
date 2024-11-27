package escola;

import java.util.ArrayList;

public class Professor extends Pessoa{
    private String formacaoAcademica;
    private double salario;

    public String getFormacaoAcademica() {
        return formacaoAcademica;
    }

    public void setFormacaoAcademica(String formacaoAcademica) {
        this.formacaoAcademica = formacaoAcademica;
    }

    public double getSalario() {
        return salario;
    }
    
    public void setSalario(double salario) {
        this.salario = salario;
    }
        
    ArrayList<Disciplina> disciplinas;
    ArrayList<Turma> turmas;
    
    void aplicarAvaliacao() {
        
    }
}