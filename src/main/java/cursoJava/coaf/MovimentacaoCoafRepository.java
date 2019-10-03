package cursoJava.coaf;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Component;

@RepositoryRestResource(collectionResourceRel = "movimentacoes", path = "movimentacoes")
@Component
public interface  MovimentacaoCoafRepository extends PagingAndSortingRepository<MovimentacaoCoaf, Long> {

}
