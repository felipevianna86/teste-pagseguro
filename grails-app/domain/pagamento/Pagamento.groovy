package pagamento

class Pagamento {

	String codigo
	Date dataPagamento
	String titulo
	Date dateCreated
	Date dateUpdated
	
	
static mapping = {
	dataPagamento column:'data_pagamento'
	dateCreated column:'data_criacao'
	dateUpdated column:'data_atualizacao'}
}
