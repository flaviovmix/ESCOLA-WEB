package funcoes;

public class mensagem {
    public static String success(String mensagem) {

        StringBuilder msg = new StringBuilder();

        msg
            .append("<div class='alert alert-success alert-dismissible fade show' role='alert'>")
            .append("<strong>" + mensagem + "</strong>")
            .append("<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>")
            .append("</div>")
        ;
        
        String msgContent = msg.toString();
        System.out.println(msgContent);
        
        return msgContent;
    }
    
    public static String danger(String mensagem) {

        StringBuilder msg = new StringBuilder();

        msg
            .append("<div class='alert alert-danger alert-dismissible fade show' role='alert'>")
            .append("<strong>" + mensagem + "</strong>")
            .append("<button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>")
            .append("</div>")
        ;
        
        String msgContent = msg.toString();
        System.out.println(msgContent);
        
        return msgContent;
    }    
}