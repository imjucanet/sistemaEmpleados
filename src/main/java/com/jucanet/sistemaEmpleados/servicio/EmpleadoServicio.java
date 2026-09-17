package com.jucanet.sistemaEmpleados.servicio;

import com.jucanet.sistemaEmpleados.modelo.modeloEmpleado;
import com.jucanet.sistemaEmpleados.repositorio.EmpleadoRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpleadoServicio implements IEmpleadoServicio {

    @Autowired
    private EmpleadoRepositorio empleadoRepositorio;


    @Override
    public List<modeloEmpleado> listarEmpleados() {
        return empleadoRepositorio.findAll();
    }

    @Override
    public modeloEmpleado buscarEmpleadoPorId(Integer id) {
        modeloEmpleado empleado = empleadoRepositorio.findById(id).orElse(null);
        return empleado;
    }

    @Override
    public void guardarEmpleado(modeloEmpleado empleado) {
        empleadoRepositorio.save(empleado);
    }

    @Override
    public void eliminarEmpleado(modeloEmpleado empleado) {
        empleadoRepositorio.delete(empleado);
    }
}
