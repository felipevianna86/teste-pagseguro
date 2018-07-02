package pagseguro

import br.com.uol.pagseguro.domain.PaymentRequest;

class PagSeguroController {

	def criarPagamento(){
		
		PaymentRequest payment = new PaymentRequest()
		payment.setReference("PAG0001")
		payment.setCurrency(Currency.getInstance("pt-br"))
		
		
		
	}
}
