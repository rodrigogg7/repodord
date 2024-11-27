<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RDZinnndz7 👿</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #2c003e, #7a00b5);
            color: white;
            margin: 0;
            overflow: hidden;
        }
        h1 {
            text-align: center;
            margin-top: 50px;
            font-size: 3em;
            text-shadow: 0 0 10px purple, 0 0 20px #ff00ff;
        }
        #game {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        #story {
            font-size: 1.5em;
            margin: 20px;
            padding: 20px;
            border: 2px solid purple;
            border-radius: 10px;
            background: rgba(0, 0, 0, 0.6);
            box-shadow: 0 0 15px #ff00ff;
        }
        .choice {
            margin: 10px;
            padding: 10px 20px;
            border: 2px solid #ff00ff;
            background: rgba(255, 0, 255, 0.2);
            color: white;
            border-radius: 5px;
            cursor: pointer;
            transition: transform 0.3s, background 0.3s;
        }
        .choice:hover {
            background: rgba(255, 0, 255, 0.5);
            transform: scale(1.1);
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        .fade {
            animation: fadeIn 1s ease-in;
        }
    </style>
</head>
<body>
    <h1>RDZinnndz7 👿</h1>
    <div id="game">
        <div id="story" class="fade">
            Você acorda em uma floresta sombria. Uma névoa roxa envolve tudo, e você sente que algo está te observando. 
            Ao longe, duas trilhas se abrem: uma iluminada por uma estranha luz verde e outra que parece descer a um abismo de sombras.
        </div>
        <button class="choice" onclick="choosePath('light')">Seguir a trilha iluminada</button>
        <button class="choice" onclick="choosePath('shadows')">Descer para o abismo de sombras</button>
    </div>

    <script>
        function choosePath(path) {
            const storyDiv = document.getElementById('story');
            const gameDiv = document.getElementById('game');

            if (path === 'light') {
                storyDiv.innerHTML = `Você escolhe seguir a trilha iluminada. A luz verde se intensifica, revelando uma criatura mística que lhe oferece um enigma para desvendar.`;
                gameDiv.innerHTML += '<button class="choice" onclick="endGame(\'victory\')">Tentar resolver o enigma</button>';
            } else {
                storyDiv.innerHTML = `Você desce ao abismo de sombras. O chão treme enquanto você encontra um trono antigo. Um ser demoníaco emerge das trevas, dizendo: "Bem-vindo, RDZinnndz7, ao seu verdadeiro lar."`;
                gameDiv.innerHTML += '<button class="choice" onclick="endGame(\'demon\')">Sentar no trono</button>';
            }
        }

        function endGame(outcome) {
            const storyDiv = document.getElementById('story');

            if (outcome === 'victory') {
                storyDiv.innerHTML = `Parabéns, RDZinnndz7! Você resolveu o enigma e foi recompensado com um artefato lendário que brilha como a luz das estrelas.`;
            } else {
                storyDiv.innerHTML = `Você senta no trono e sente um poder incomensurável tomar conta de você. Agora, você é o senhor do abismo. 👿`;
            }

            document.querySelectorAll('.choice').forEach(button => button.remove());
        }
    </script>
</body>
</html>
