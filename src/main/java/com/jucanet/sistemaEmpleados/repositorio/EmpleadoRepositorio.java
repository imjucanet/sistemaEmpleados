package com.jucanet.sistemaEmpleados.repositorio;

import com.jucanet.sistemaEmpleados.modelo.modeloEmpleado;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmpleadoRepositorio extends JpaRepository<modeloEmpleado, Integer> {

}
