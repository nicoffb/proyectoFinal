package com.salesianostriana.dam.proyectofinal.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.salesianostriana.dam.proyectofinal.model.Venta;
import com.salesianostriana.dam.proyectofinal.repository.VentaRepository;
import com.salesianostriana.dam.proyectofinal.servicio.base.ServicioBaseImpl;


@Service
public class VentaServicio extends ServicioBaseImpl<Venta, Long, VentaRepository>{
	
	@Autowired
	private VentaRepository repositorio;
	
	public List<Venta> findAll() {
		return repositorio.findAll();
	}	
	
	
	public Venta save(Venta venta) {
		return repositorio.save(venta);
	}
	
	public Optional<Venta> findById(Long id) {
		return Optional.ofNullable(repositorio.findById(id).orElse(null));
	}
/*
	public void delete(Venta venta) {
		Optional<Venta> result = findById(venta.getId());
		repositorio.deleteById(result);
	}
	*/
	
	//este si
	public VentaServicio(VentaRepository repositorio) {
		super(repositorio);
		// TODO Auto-generated constructor stub
	}

}
