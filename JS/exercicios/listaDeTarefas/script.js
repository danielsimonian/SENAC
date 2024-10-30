const tarefas = []; // Array para armazenar as tarefas

document.getElementById('adicionarBtn').addEventListener('click', adicionarTarefa);

function adicionarTarefa() {
    const tarefaInput = document.getElementById('tarefaInput');
    const tarefaTexto = tarefaInput.value.trim();

    if (tarefaTexto === '') {
        alert('Por favor, insira uma tarefa.');
        return;
    }

    // Adiciona a tarefa ao array
    tarefas.push(tarefaTexto);

    const li = document.createElement('li');
    li.textContent = tarefaTexto;

    const removerBtn = document.createElement('button');
    removerBtn.textContent = 'Remover';
    removerBtn.onclick = function () {
        removerTarefa(li, tarefaTexto);
    };

    const substituirBtn = document.createElement('button');
    substituirBtn.textContent = 'Substituir';
    substituirBtn.onclick = function () {
        substituirTarefa(li, tarefaTexto);
    };

    li.appendChild(removerBtn);
    li.appendChild(substituirBtn);
    document.getElementById('listaTarefas').appendChild(li);
    tarefaInput.value = '';
}

function removerTarefa(tarefa, tarefaTexto) {
    const lista = document.getElementById('listaTarefas');
    lista.removeChild(tarefa);
    
    // Remove a tarefa do array
    const index = tarefas.indexOf(tarefaTexto);
    if (index > -1) {
        tarefas.splice(index, 1);
    }
}

function substituirTarefa(tarefa, tarefaTexto) {
    const novaTarefaTexto = prompt('Digite a nova tarefa:', tarefa.firstChild.textContent);
    if (novaTarefaTexto) {
        const novaTarefa = document.createElement('li');
        novaTarefa.textContent = novaTarefaTexto;

        const removerBtn = document.createElement('button');
        removerBtn.textContent = 'Remover';
        removerBtn.onclick = function () {
            removerTarefa(novaTarefa, novaTarefaTexto);
        };

        const substituirBtn = document.createElement('button');
        substituirBtn.textContent = 'Substituir';
        substituirBtn.onclick = function () {
            substituirTarefa(novaTarefa, novaTarefaTexto);
        };

        novaTarefa.appendChild(removerBtn);
        novaTarefa.appendChild(substituirBtn);

        const lista = document.getElementById('listaTarefas');
        lista.replaceChild(novaTarefa, tarefa);
        
        // Atualiza o array
        const index = tarefas.indexOf(tarefaTexto);
        if (index > -1) {
            tarefas[index] = novaTarefaTexto; // Substitui a tarefa no array
        }
    }
}
