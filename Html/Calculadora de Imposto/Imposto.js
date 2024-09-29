function calculaImposto(valor) {
    return valor * 0.12;
}
const vendas = [];
let tabela = document.getElementById("tabela");

function preencherVetor() {

    let nome = document.getElementById("nome").value;
    let valor = document.getElementById("valor").value;
    let desconto = calculaImposto(valor);
    vendas.push({
        nome,
        valor,
        desconto
    });
    exibirTabela(vendas);
}

//console.log(vendas)

function exibirTabela() {
    let innerTabela = "";
    for (i = 0; i < vendas.length; i++) {
        console.log(vendas[i])
        innerTabela = `
            <tr>
                <td>
                    ${i + 1}
                </td>
                <td>
                    ${vendas[i].nome}
                </td>
                <td>
                    ${vendas[i].valor}
                </td>
                <td>
                   ${vendas[i].desconto.toFixed(2)}
					
                </td>
            </tr>
        `;
    }

    tabela.innerHTML += innerTabela;
}

function excluirDado() {
    vendas.pop();
    tabela.innerHTML = `
    <tr>
    <th>id</th>
    <th>Nome Cliente</th>
    <th>Emprestimo</th>
    <th>Juros</th>
</tr>
    `
    exibirTabela();
}