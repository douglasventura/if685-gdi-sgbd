use('fitness')

db.createCollection('participantes')
db.createCollection('grupos')
db.createCollection('funcionarios')

db.participantes.insertMany([
    {
        nome: "João Silva",
        idade: 30,
        meta: "Perder peso",
        atividades: ["Corrida", "Musculação", "Yoga"],
        altura: 175,
        peso: 80,
        email: "joao@example.com",
        telefone: "123456789",
        cidade: "São Paulo",
        cpf: "11122233344"
    },
    {
        nome: "Maria Oliveira",
        idade: 25,
        meta: "Ganhar massa muscular",
        atividades: ["Musculação", "CrossFit"],
        altura: 163,
        peso: 65,
        email: "maria@example.com",
        telefone: "987654321",
        cidade: "Rio de Janeiro",
        cpf: "22233344455"
    },
    {
        nome: "Carlos Santos",
        idade: 35,
        meta: "Melhorar resistência cardiovascular",
        atividades: ["Natação", "Ciclismo"],
        altura: 180,
        peso: 75,
        email: "carlos@example.com",
        telefone: "456789123",
        cidade: "Brasília",
        cpf: "33344455566"
    },
    {
        nome: "Ana Costa",
        idade: 28,
        meta: "Manter a forma física",
        atividades: ["Pilates", "Funcional"],
        altura: 168,
        peso: 60,
        email: "ana@example.com",
        telefone: "789123456",
        cidade: "Salvador",
        cpf: "44455566677"
    },
    {
        nome: "Pedro Almeida",
        idade: 32,
        meta: "Flexibilidade",
        atividades: ["Alongamento", "Yoga"],
        altura: 170,
        peso: 70,
        email: "pedro@example.com",
        telefone: "321654987",
        cidade: "Fortaleza",
        cpf: "55566677788"
    },
    {
        nome: "Luciana Rodrigues",
        idade: 29,
        meta: "Condicionamento geral",
        atividades: ["CrossFit", "Musculação"],
        altura: 172,
        peso: 68,
        email: "luciana@example.com",
        telefone: "654987321",
        cidade: "Recife",
        cpf: "66677788899"
    },
    {
        nome: "Rafael Pereira",
        idade: 27,
        meta: "Ganhar massa muscular",
        atividades: ["Musculação", "Supino"],
        altura: 178,
        peso: 82,
        email: "rafael@example.com",
        telefone: "987321654",
        cidade: "Curitiba",
        cpf: "77788899900"
    },
    {
        nome: "Mariana Gomes",
        idade: 31,
        meta: "Melhorar saúde mental",
        atividades: ["Meditação", "Pilates"],
        altura: 165,
        peso: 63,
        email: "mariana@example.com",
        telefone: "147258369",
        cidade: "Manaus",
        cpf: "88899900011"
    },
    {
        nome: "Fernando Martins",
        idade: 33,
        meta: "Aumentar resistência",
        atividades: ["Corrida", "Natação"],
        altura: 181,
        peso: 77,
        email: "fernando@example.com",
        telefone: "369147258",
        cidade: "Porto Alegre",
        cpf: "99900011122"
    },
    {
        nome: "Sara Ferreira",
        idade: 26,
        meta: "Perder gordura abdominal",
        atividades: ["CrossFit", "Abdominais"],
        altura: 170,
        peso: 66,
        email: "sara@example.com",
        telefone: "258369147",
        cidade: "Belém",
        cpf: "00011122233"
    },
    {
        nome: "Rodrigo Silva",
        idade: 34,
        meta: "Ganhar massa magra",
        atividades: ["Musculação"],
        altura: 176,
        peso: 73,
        email: "rodrigo@example.com",
        telefone: "369258147",
        cidade: "Florianópolis",
        cpf: "11122233344"
    },
    {
        nome: "Patrícia Lima",
        idade: 30,
        meta: "Flexibilidade",
        atividades: ["Pilates", "Yoga"],
        altura: 167,
        peso: 62,
        email: "patricia@example.com",
        telefone: "258147369",
        cidade: "Goiânia",
        cpf: "22233344455"
    },
    {
        nome: "Daniel Pereira",
        idade: 29,
        meta: "Aumentar força",
        atividades: ["Musculação"],
        altura: 179,
        peso: 85,
        email: "daniel@example.com",
        telefone: "147369258",
        cidade: "Vitória",
        cpf: "33344455566"
    },
    {
        nome: "Camila Barbosa",
        idade: 28,
        meta: "Condicionamento cardiovascular",
        atividades: ["Corrida", "Ciclismo"],
        altura: 173,
        peso: 69,
        email: "camila@example.com",
        telefone: "369258147",
        cidade: "Cuiabá",
        cpf: "44455566677"
    },
    {
        nome: "Gustavo Oliveira",
        idade: 31,
        meta: "Reduzir estresse",
        atividades: ["Meditação", "Yoga"],
        altura: 172,
        peso: 71,
        email: "gustavo@example.com",
        telefone: "258147369",
        cidade: "Campo Grande",
        cpf: "55566677788"
    },
    {
        nome: "Juliana Silva",
        idade: 27,
        meta: "Melhorar postura",
        atividades: ["Pilates", "Alongamento"],
        altura: 166,
        peso: 64,
        email: "juliana@example.com",
        telefone: "147369258",
        cidade: "Natal",
        cpf: "66677788899"
    },
    {
        nome: "André Sousa",
        idade: 32,
        meta: "Aumentar massa muscular",
        atividades: ["Musculação", "Suplementação"],
        altura: 177,
        peso: 79,
        email: "andre@example.com",
        telefone: "258147369",
        cidade: "João Pessoa",
        cpf: "77788899900"
    },
    {
        nome: "Amanda Santos",
        idade: 29,
        meta: "Aumentar resistência",
        atividades: ["CrossFit", "Funcional"],
        altura: 170,
        peso: 67,
        email: "amanda@example.com",
        telefone: "369258147",
        cidade: "Teresina",
        cpf: "88899900011"
    },
    {
        nome: "Fábio Costa",
        idade: 30,
        meta: "Perder peso",
        atividades: ["Corrida", "Alimentação saudável"],
        altura: 174,
        peso: 75,
        email: "fabio@example.com",
        telefone: "147369258",
        cidade: "Aracaju",
        cpf: "99900011122"
    },
    {
        nome: "Carla Pereira",
        idade: 28,
        meta: "Melhorar flexibilidade",
        atividades: ["Yoga", "Pilates"],
        altura: 165,
        peso: 61,
        email: "carla@example.com",
        telefone: "369258147",
        cidade: "Porto Velho",
        cpf: "00011122233"
    }
])

db.funcionarios.insertMany([
    {
        nome: "Eduardo Souza",
        tipo: "Treinador",
        especialidade: "Corrida",
        salario: 5000
    },
    {
        nome: "Carolina Fernandes",
        tipo: "Psicólogo",
        especialidade: "Esportes",
        salario: 6000
    },
    {
        nome: "Ana Oliveira",
        tipo: "Consultor",
        especialidade: "Nutrição",
        salario: 7000
    },
    {
        nome: "Pedro Lima",
        tipo: "Consultor",
        especialidade: "Fisiologia",
        salario: 7200
    },
    {
        nome: "Joana Almeida",
        tipo: "Psicólogo",
        especialidade: "Performance",
        salario: 5800
    },
    {
        nome: "Fernanda Costa",
        tipo: "Treinador",
        especialidade: "CrossFit",
        salario: 5300
    },
    {
        nome: "Bruno Fernandes",
        tipo: "Treinador",
        especialidade: "Natação",
        salario: 5100
    },
    {
        nome: "Carlos Oliveira",
        tipo: "Treinador",
        especialidade: "Ciclismo",
        salario: 5900
    },
    {
        nome: "Maria Lima",
        tipo: "Treinador",
        especialidade: "Alongamento",
        salario: 5600
    },
    {
        nome: "Patricia Almeida",
        tipo: "Treinador",
        especialidade: "Musculação",
        salario: 5500
    },
    {
        nome: "Rafael Oliveira",
        tipo: "Treinador",
        especialidade: "Funcional",
        salario: 5400
    },
    {
        nome: "Camila Alves",
        tipo: "Treinador",
        especialidade: "Pilates",
        salario: 5200
    },
    {
        nome: "Leticia Costa",
        tipo: "Treinador",
        especialidade: "Meditacao",
        salario: 5100
    },
    {
        nome: "Pedro Almeida",
        tipo: "Treinador",
        especialidade: "Ciclismo",
        salario: 5900
    },
    {
        nome: "Amanda Santos",
        tipo: "Treinador",
        especialidade: "Supino",
        salario: 5800
    },
    {
        nome: "Ricardo Alves",
        tipo: "Treinador",
        especialidade: "Abdominais",
        salario: 5700
    },
    {
        nome: "Mariana Lima",
        tipo: "Treinador",
        especialidade: "Alongamento",
        salario: 5600
    },
    {
        nome: "Pedro Oliveira",
        tipo: "Treinador",
        especialidade: "CrossFit",
        salario: 5500
    },
    {
        nome: "Gabriela Almeida",
        tipo: "Treinador",
        especialidade: "Yoga",
        salario: 5400
    }
])

var treinadorCorrida = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Corrida"})
var treinadorCrossFit = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "CrossFit"})
var treinadorNatacao = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Natação"})
var treinadorCiclismo = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Ciclismo"})
var treinadorAlongamento = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Alongamento"})
var treinadorMusculacao = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Musculação"})
var treinadorFuncional = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Funcional"})
var treinadorPilates = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Pilates"})
var treinadorSupino = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Supino"})
var treinadorAbdominais = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Abdominais"})
var treinadorYoga = db.funcionarios.findOne({"tipo": "Treinador", "especialidade": "Yoga"})

var grupoCorrida = db.participantes.aggregate([
    { $match: { atividades: "Corrida" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoMusculacao = db.participantes.aggregate([
    { $match: { atividades: "Musculação" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoYoga = db.participantes.aggregate([
    { $match: { atividades: "Yoga" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoNatacao = db.participantes.aggregate([
    { $match: { atividades: "Natação" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoCiclismo = db.participantes.aggregate([
    { $match: { atividades: "Ciclismo" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoCrossFit = db.participantes.aggregate([
    { $match: { atividades: "CrossFit" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoPilates = db.participantes.aggregate([
    { $match: { atividades: "Pilates" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoFuncional = db.participantes.aggregate([
    { $match: { atividades: "Funcional" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoSupino = db.participantes.aggregate([
    { $match: { atividades: "Supino" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoAbdominais = db.participantes.aggregate([
    { $match: { atividades: "Abdominais" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

var grupoAlongamento = db.participantes.aggregate([
    { $match: { atividades: "Alongamento" } },
    { $group: { _id: null, participantes: { $push: "$$ROOT" } } }
]).toArray()

db.grupos.insertMany([
    {
        "_id": 1,
        "participantes": grupoCorrida,
        "atividade": "Corrida",
        "treinador": treinadorCorrida
    },
    {
        "_id": 2,
        "participantes": grupoMusculacao,
        "atividade": "Musculação",
        "treinador": treinadorMusculacao
    },
    {
        "_id": 3,
        "participantes": grupoYoga,
        "atividade": "Yoga",
        "treinador": treinadorYoga
    },
    {
        "_id": 4,
        "participantes": grupoCrossFit,
        "atividade": "CrossFit",
        "treinador": treinadorCrossFit
    },
    {
        "_id": 5,
        "participantes": grupoNatacao,
        "atividade": "Natação",
        "treinador": treinadorNatacao
    },
    {
        "_id": 6,
        "participantes": grupoCiclismo,
        "atividade": "Ciclismo",
        "treinador": treinadorCiclismo
    },
    {
        "_id": 7,
        "participantes": grupoPilates,
        "atividade": "Pilates",
        "treinador": treinadorPilates
    },
    {
        "_id": 8,
        "participantes": grupoFuncional,
        "atividade": "Funcional",
        "treinador": treinadorFuncional
    },
    {
        "_id": 9,
        "participantes": grupoAlongamento,
        "atividade": "Alongamento",
        "treinador": treinadorAlongamento
    },
    {
        "_id": 10,
        "participantes": grupoSupino,
        "atividade": "Supino",
        "treinador": treinadorSupino
    },
    {
        "_id": 12,
        "participantes": grupoAbdominais,
        "atividade": "Abdominais",
        "treinador": treinadorAbdominais
    },
])


