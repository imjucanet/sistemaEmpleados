package com.jucanet.sistemaEmpleados.servicio;

import com.jucanet.sistemaEmpleados.modelo.modeloEmpleado;

import java.util.List;

public interface IEmpleadoServicio {

    public List<modeloEmpleado> listarEmpleados();

    public modeloEmpleado buscarEmpleadoPorId(Integer id);

    public void guardarEmpleado(modeloEmpleado empleado);

    public void eliminarEmpleado(modeloEmpleado empleado);

}
