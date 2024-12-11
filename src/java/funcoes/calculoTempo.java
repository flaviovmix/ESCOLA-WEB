package funcoes;

import java.util.Date;

public class calculoTempo {
    
        public static long calcularIdade(Date dataNascimento) {
        if (dataNascimento == null) {
            throw new IllegalArgumentException("A data de nascimento não pode ser nula.");
        }

        Date dataAtual = new Date();

        // Calcular a diferença em milissegundos
        long diffMilissegundos = dataAtual.getTime() - dataNascimento.getTime();

        // Converter milissegundos para segundos
        long diffSegundos = diffMilissegundos / 1000;

        // Número de segundos em um ano (considerando ano comum de 365 dias)
        long segundosPorAno = 60L * 60 * 24 * 365;

        // Calcular a idade em anos
        return diffSegundos / segundosPorAno;
    }
    
}