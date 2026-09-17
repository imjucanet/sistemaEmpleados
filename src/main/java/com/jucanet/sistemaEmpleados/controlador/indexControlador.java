package com.jucanet.sistemaEmpleados.controlador;

import com.jucanet.sistemaEmpleados.modelo.modeloEmpleado;
import com.jucanet.sistemaEmpleados.servicio.EmpleadoServicio;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class indexControlador {
    //Información a consola
    private static final Logger logger =
            LoggerFactory.getLogger(indexControlador.class);

    private final EmpleadoServicio empleadoServicio;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String iniciar(ModelMap modelo) {
        List<modeloEmpleado> empleados = empleadoServicio.listarEmpleados();
        empleados.forEach((empleado) -> logger.info(empleado.toString()));
        //Compartimos el modelo con la vista
        modelo.put("empleados", empleados);
        return "index";

    }

    @RequestMapping(value = "/agregarEmpleados", method = RequestMethod.GET)
    public String mostrarAgregarEmpleado() {
        return "agregarEmpleado";

    }

    @RequestMapping(value = "/agregarEmpleados", method = RequestMethod.POST)
    public String agregarEmpleado(@ModelAttribute("empleadoForma") modeloEmpleado empleado) {
        logger.info("Empleado agregado" + empleado);
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/";
    }

    @RequestMapping(value = "/editarEmpleado", method = RequestMethod.GET)
    public String mostrarEditarEmpleado(@RequestParam int idEmpleado, ModelMap modelo) {
        modeloEmpleado empleado = empleadoServicio.buscarEmpleadoPorId(idEmpleado);
        logger.info("Empleado a editar: " + empleado);
        modelo.put("empleado", empleado);
        return "editarEmpleado";
    }

    @RequestMapping(value = "/editarEmpleados", method = RequestMethod.POST)
        public String editarEmpleado(@ModelAttribute("empleadoForma") modeloEmpleado empleado){
        logger.info("Empleado a editar: " + empleado);
        empleadoServicio.guardarEmpleado(empleado);
        return "redirect:/";
    }

    @RequestMapping(value ="/eliminarEmpleados", method = RequestMethod.GET)
    public String eliminarEmpleados(@RequestParam int idEmpleado) {
        modeloEmpleado empleado = new modeloEmpleado();
        empleado.setIdEmpleado(idEmpleado);
        empleadoServicio.eliminarEmpleado(empleado);
        return "redirect:/";
    }

}
