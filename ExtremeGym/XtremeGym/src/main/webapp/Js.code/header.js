// Obtém o elemento do cabeçalho
const header = document.getElementById('Header1');

// Obtém a altura da imagem de fundo
const imagemBackground = document.getElementById('imagemBackgroud');
const imagemBackgroundHeight = imagemBackground.offsetHeight;

// Calcula a posição em que o cabeçalho deve mudar de aparência
const triggerPosition = imagemBackgroundHeight / 2;

// Adiciona um ouvinte de evento para detectar a rolagem da página
window.addEventListener('scroll', function() {
    // Obtém a posição atual de rolagem vertical
    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;

    // Verifica se a posição de rolagem é maior do que a posição de gatilho
    if (scrollTop > triggerPosition) {
        // Aplica a cor de fundo branca ao cabeçalho
        header.style.backgroundColor = '#ffffff';

        // Altera a cor do texto do cabeçalho para preto
        header.style.color = '#000000';
    } else {
        // Remove a cor de fundo do cabeçalho (volta ao padrão)
        header.style.backgroundColor = '';

        // Remove a cor do texto do cabeçalho (volta ao padrão)
        header.style.color = '';
    }
});