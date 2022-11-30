package principal.secundario;

import com.intuit.karate.junit5.Karate;

class Testes {
    
    @Karate.Test
    Karate Testes() {
        return Karate.run("testes").relativeTo(getClass());
    }    

}