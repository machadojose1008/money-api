package com.example.moneyapi.service;

import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.moneyapi.model.Lancamento;
import com.example.moneyapi.model.Pessoa;
import com.example.moneyapi.repository.LancamentoRepository;
import com.example.moneyapi.repository.PessoaRepository;
import com.example.moneyapi.service.exception.PessoaInexistenteOuInativaException;

@Service
public class LancamentoService {
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	@Autowired
	private LancamentoRepository lancamentoRepository;
	
	
	

	public Lancamento salvar(Lancamento lancamento) {

		Optional<Pessoa> pessoa = pessoaRepository.findById(lancamento.getPessoa().getId());

		/*
		 * Com a mudança na versão do spring, a aula não reflete 100% da necessidade,
		 * existe a necessidade de utilizar o Optional<T>, para pegar a propriedade de
		 * ... dentro do objeto opicional pessoal isInativo usei o .get()
		 */

		if (!pessoa.isPresent() || pessoa.get().isInativo()) {

			throw new PessoaInexistenteOuInativaException();

		}

		return lancamentoRepository.save(lancamento);
	}

}
