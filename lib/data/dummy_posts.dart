import 'package:roda_bem_app/models/posts.dart';

//dummy_users
const DUMMY_POSTS = {
  '1': const Posts(
    id: '1',
    nome: 'Frete',
    tipocaminhao: 'Truck',
    origem: 'Salvador',
    destino: 'Florianópolis',
    tipocarga: 'Seca',
    tipofrete: 'Comercial',
    avatar: '',
  ),
  '2': const Posts(
    id: '2',
    nome: 'Mudança',
    tipocaminhao: '3/4',
    origem: 'Fortaleza - Centro',
    destino: 'Setor industrial',
    tipocarga: 'Residencial',
    tipofrete: 'Particular',
    avatar: '',
  ),
  '3': const Posts(
    id: '3',
    nome: 'Transporte de petróleo',
    tipocaminhao: 'Tanque',
    origem: 'Manaus',
    destino: 'Espírito Santo',
    tipocarga: 'Perigosa/Inflamável',
    tipofrete: 'Comercial',
    avatar: '',
  ),
  '4': const Posts(
    id: '4',
    nome: 'Transporte de Soja',
    tipocaminhao: 'Truck',
    origem: 'Belo Horizonte',
    destino: 'Belém',
    tipocarga: 'Secas',
    tipofrete: 'Comercial',
    avatar: '',
  ),
};
