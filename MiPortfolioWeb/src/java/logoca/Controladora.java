
package logoca;

import java.util.List;
import persistencia.ControladoraPersistencia;


public class Controladora {
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearPersona(Persona per) {
        controlPersis.crearPersona(per);
    }
    
    public void eliminarpersona(int id) {
        controlPersis.eliminarPersona(id);
    }
    public void eliminarpersona(Persona per) {
        controlPersis.eliminarPersona(per);
    }
    
    public List<Persona> traerPersona() {
        return controlPersis.traerPersonas();
    }
}
