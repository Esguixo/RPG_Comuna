program rpgGuilherme120;
type
  Blindagem = Record
    nome: String;
    resistencia: Integer;
  end;
  Armamento = Record
    nome: String;
    dano: Integer;
    alcance: Integer;
   end;
  Personagem = Record
    nome: String;
    idade: Integer;
    armadura: Blindagem;
    arma: Armamento;
  end;
var
  personage: Personagem;

procedure apresentar(var pessoe: Personagem);
begin
     WriteLn('Bem vinde, cavalheire!');
     WriteLN('Sua historia comeca na taverna...');
     ReadLn;
     WriteLn('O barperson te oferece hidromel...');
     ReadLn;
     WriteLn('E pergunta seu nome...');
     ReadLn;
     WriteLn('Bhar Persuon: Ei amigue, qual seu nome???');
     ReadLn(pessoe.nome);
end;
procedure osSuburbiosDoBurgo(var pessoe: Personagem);
var
  opcaoDeArmamento : Integer;
  opcaoDeBlindagem: Integer;

  varinha: Armamento;
  espada: Armamento;
  maca: Armamento;
  viola: Armamento;
  foiceMartelo: Armamento;

  tunica: Blindagem;
  armadura: Blindagem;
  couraca: BLindagem;
  camiseta: Blindagem;
  fioDental: Blindagem;

begin
     varinha.nome := 'Phoenix';
     varinha.alcance := 8;
     varinha.dano := 4;

     espada.nome := 'Griphindor';
     espada.alcance := 3;
     espada.dano := 9;

     maca.nome := 'Ze ramalho';
     maca.alcance := 4;
     maca.dano := 8;

     viola.nome := 'Serjhao';
     viola.alcance := 10;
     viola.dano := 2;

     foiceMartelo.nome := 'Marx';
     foiceMartelo.alcance := 2;
     foiceMartelo.dano := 9;

     tunica.nome := 'Tonhao';
     tunica.resistencia := 4;

     armadura.nome := 'Moacir';
     armadura.resistencia := 9;

     couraca.nome := 'Moriarty';
     couraca.resistencia := 7;

     camiseta.nome := 'Flecha';
     camiseta.resistencia := 2;

     fioDental.nome := 'Gargamel';
     fioDental.resistencia := 8;

     WriteLn('Preciso de alguem de coragem!');
     WriteLn('O trabalho a seguir sera arduo');
     ReadLn;
     WriteLn('============================================================');
     WriteLn('O que voce escolhe para lutar?');
     ReadLn;
     WriteLn('1 - Varinha - Atributos[nome: Phoenix / dano: 4 / alcance: 8]');
     WriteLn('2 - Espada - Atributos[nome: Griphindor / dano: 9 / alcance: 3]');
     WriteLn('3 - Maca - Atributos[nome: Ze Ramalho / dano: 8 / alcance: 4]');
     WriteLn('4 - Viola - Atributos[nome: Serjhao / dano: 2 / alcance: 10]');
     WriteLn('5 - Foice e martelo, camarada - Atributos[nome: MARX / dano: 9 / alcance: 2]');

     ReadLn(opcaoDeArmamento);
		 
		 WriteLn('');
		 WriteLn('============================================================');
     WriteLn('Escolha agora algo que lhe protegera');
     ReadLn;
     WriteLn('1 - Tunica - Atributos[nome: Tonhao / resistencia: 4]');
     WriteLn('2 - Armadura - Atributos[nome: Moacir / resistencia: 9]');
     WriteLn('3 - Couraca - Atributos[nome: Moriarty / resistencia: 7]');
     WriteLn('4 - Camiseta - Atributos[nome: Flecha / resistencia: 2]');
     WriteLn('5 - Fio dental - Atributos[nome: Gargamel / resistencia: 8]');

     ReadLn(opcaoDeBlindagem);

     if opcaoDeArmamento = 1 then
        pessoe.arma := varinha;

     if opcaoDeArmamento = 2 then
        pessoe.arma := espada;

     if opcaoDeArmamento = 3 then
        pessoe.arma := maca;

     if opcaoDeArmamento = 4 then
        pessoe.arma := viola;

     if opcaoDeArmamento = 5 then
        pessoe.arma := foiceMartelo;



     if opcaoDeBlindagem = 1 then
        pessoe.armadura := tunica;

     if opcaoDeBlindagem = 2 then
        pessoe.armadura := armadura;

     if opcaoDeBlindagem = 3 then
        pessoe.armadura := camiseta;

     if opcaoDeBlindagem = 4 then
        pessoe.armadura := couraca;

     if opcaoDeBlindagem = 5 then
        pessoe.armadura := fioDental;


     if opcaoDeBlindagem = opcaoDeArmamento then
     begin
       pessoe.arma.dano := pessoe.arma.dano + 1;
       pessoe.armadura.resistencia := pessoe.armadura.resistencia + 1;
     end

     else
     begin
       pessoe.arma.dano := pessoe.arma.dano - 1;
       pessoe.armadura.resistencia := pessoe.armadura.resistencia - 1;
     end;

     WriteLn('Muito bem ', pessoe.nome, ' voce esta preparade!');
     ReadLn;
     WriteLn('Use seu ', pessoe.arma.nome, ' como arma.');
     WriteLn('Vista seu ', pessoe.armadura.nome, ' para se proteger dos inimigos!');
     WriteLn('Sua jornada comeca aqui!');
     ReadLn;
end;

procedure combate (var pessoe, inimigue: Personagem);
var
	danoRoundInimigue, danoRoundPersonagem, turno: Integer;

begin
  turno := 0;

  WriteLn('Pressione ENTER para comecar!');
  WriteLN('=============================================');
  WriteLn('[', pessoe.nome, '(HP: ', pessoe.armadura.resistencia, ')  VS ', inimigue.nome, ' (HP: ', inimigue.armadura.resistencia, ')]');
  Readln;
  while True do
  begin
    danoRoundInimigue := Random(inimigue.arma.dano);
    danoRoundPersonagem := Random(pessoe.arma.dano * 2);
    
    if (danoRoundPersonagem <= 5) then
    	inimigue.armadura.resistencia := inimigue.armadura.resistencia - 1
    else
    	inimigue.armadura.resistencia := inimigue.armadura.resistencia - danoRoundPersonagem;

    ReadLn;
    turno := turno + 1;
    WriteLn('=================');
    WriteLn('Turno ', turno);
    WriteLn('=================');
    WriteLn('SUA VEZ! Pressione ENTER para atacar');
    ReadLn;
    
		if (danoRoundPersonagem <= 5) then
    begin
    	WriteLn(inimigue.nome, ' bloqueou seu ataque!');
    	WriteLn(inimigue.nome, ' só perde 1 HP');
    	ReadLn;
    end
    
    else
    begin
			WriteLn('Voce causa ', danoRoundPersonagem, ' de dano.');
			ReadLn;
    end;
    
    WriteLn('HP ', inimigue.nome, ': ', inimigue.armadura.resistencia);
    ReadLn;
		
		if (inimigue.armadura.resistencia <= 0) then
		begin
			WriteLn(inimigue.nome, ' sucumbe diante ao poder de ', pessoe.nome, '!!!!');
			exit;
		end;
		
		if (danoRoundInimigue <= 2) then
	 		pessoe.armadura.resistencia := pessoe.armadura.resistencia + 2
	 		
	 	else
	  	pessoe.armadura.resistencia := pessoe.armadura.resistencia - danoRoundInimigue; 

    WriteLn('==========================================');

    WriteLn('Vez de ', inimigue.nome, ' atacar!');
    //Sleep
    ReadLn;
    if (danoRoundInimigue <= 2) then
    begin
			WriteLn(pessoe.nome, ' esquiva e recupera 2 HP');
			ReadLn;	
		end
		
		
		else
		begin
			WriteLn(inimigue.nome, ' causa ', danoRoundInimigue, ' de dano !');
			ReadLn;
		end;	
    
    WriteLn('HP de ', pessoe.nome, ': ', pessoe.armadura.resistencia);
    ReadLn;
    if (pessoe.armadura.resistencia <= 0) then
    begin
			WriteLn(inimigue.nome, ' fere ', pessoe.nome, ' com um golpe mortal!!!. Parece que a jornada chegou ao fim');
			exit;
		end;
  end;
end;

procedure trovador;
begin
  WriteLn('Trovador: A muito tempo atras, no reino da California, um homem chamado "Seu Elon", dono de uma mina de Esmeraldas, se aposentou e foi morar com seu filho: "Elon Musk".');
	Readln;
	WriteLn('Trovador: Passaram a morar juntos: "Seu Elon", "Elon Musk", a esposa do Elon musk e o neto, filho de "Elon Musk", o "Elin".');
  Readln;
	WriteLn('Trovador: A familia vivia muito feliz e "Elin gostava muito do seu avo, que lhe contava as historias do seu tempo de gloria, em que escravizava anoes em suas minas de esmeralda.');
	Readln;
	WriteLn('Trovador: Porem a situaçao desagradava a esposa de "Elon Musk", que insistia dia e noite para o marido mandar o pai pra um asilo e deixar a casa.');
	Readln;
	WriteLn('Trovador: "Elon Musk" desgostoso com a situaaçao, pois "Elin" gostava muito do vovo, porem com medo do fim do casamento, diz ao "Seu Elon":'); 
	Readln;
	WriteLn('Elon Musk: E o seguinte pai, voce vai ter que ir embora. Tchau brigado!');
  Readln;
	WriteLn('"Elon Musk" pega uma coberta da Space-X e da pro pai que sai da casa sem rumo. Nisso "Elin" sai correndo e diz ao avo');
  Readln;
	WriteLn('Elin: Vovo, me espere. Eu quero metade dessa sua coberta da Space-X');
  Readln;
	WriteLn('Seu Elon: Mas netinho, e a unica coisa que eu tenho. Mas vou te dar');
  Readln;
	WriteLn('Entao "Seu Elon" rasga metade da coberta e da pra "Elin". EntÃ£o o "Elon Musk" afoito pergunta pro filho:');
  Readln;
	WriteLN('Elon Musk: Filho, o que voce fez? Por que pegou metade da coberta do seu avo?');
  Readln;
	WriteLn('Elin: Por que papai, um dia eu vou crescer, eu vou casar, eu vou ter uma esposa, o senhor vai ficar velho, vai vir morar comigo, a minha esposa nao vai gostar do senhor, ai eu vou ter que te mandar embora. ');
  Readln;
	WriteLn('Elin: Aqui eu ja tenho metade da coberta que eu vou dar pro senhor pra ir morar na rua, igual voce fez com o vovo!');
	Readln;
	WriteLn('Quando o "Elon Musk" ouviu isso, FOI UMA CHORADEIRA, TODO MUNDO CAIU DE JOELHO EM TERRA, FOI UMA CHORADEIRA NAQUELA CASA');
 	Readln;
	WriteLn('Resumo da opera: Antes do "Elin" crescer, o "Elon Musk" colocou ele pra adoçao pra no futuro nao ser expulso de casa.');
  Readln;
  WriteLN('Quando o trovador acaba sua historia, o bando "Indicador" chega no bar mostrando toda sua maldade!');
  ReadLn;
end;

procedure explicaSenhora (var pessoe: Personagem);
begin
  WriteLn('O viajante se aproxima da senhora encapuzada com ar misteriosos');
  ReadLn;
  WriteLn(pessoe.nome, ': Senhora, esta Ã© uma regiÃ£o perigosa. A senhora precisa de ajuda?');
  ReadLn;
  WriteLn('Agora: Meu jovem, jÃ¡ vivi muito, nÃ£o Ã© qualquer um que vai me derrubar.');
  ReadLn;
  WriteLn('Agora: Fui roubada por um bando conhecido como "Indicadores"! Levaram um objeto de grande valor pra mim.');
  ReadLn;
  WriteLn('Agora: Se me ajudar a recuperar o item posso te recompensar com dinheiro!');
  ReadLn;
end;

procedure bar (var pessoe: Personagem);
begin
  WriteLn('Agora: Muito bem! Esta noite voce deve ir para "Planices Secas"');
  WriteLn('la voce encontrara os "Indicadores" no bar "Balde furado"');
  WriteLn('================================');
  ReadLn;
	WriteLn(pessoe.nome, 'pega sua montaria, um javali escarlate, e vai atÃ© "Planices Secas"');
	ReadLn;
  WriteLn('JÃ¡ na cidade, ', pessoe.nome, ' econtra o bar e adentra o recinto');
  WriteLn('Quando voce chega sente o ar pesado do ambiente!');
  Readln;
  WriteLn('Voce nao ve sinal dos inimigos. No momento um trovador esta contando uma historia econstado em um canto do bar.');
  ReadLn;
end;

procedure encontro (var npc1, npc2, boss: Personagem);
begin
   WriteLN('Voce ve 3 pessoas: ');
   ReadLn;
   WriteLn('O primeiro e: [Nome: ', npc1.nome, ' / Arma: ', npc1.arma.nome, '(dano: ', npc1.arma.dano, ') / HP: ', npc1.armadura.resistencia, ' / Caracteristica: trabalha pro lider do bando - Coloca o feijao por baixo do arroz]');
   ReadLn;
   WriteLn('O segundo e: [Nome: ', npc2.nome, ' / Arma: ', npc2.arma.nome, '(dano: ', npc2.arma.dano, ') / HP: ', npc2.armadura.resistencia, ' / Caracteristica: trabalha pro lider do bando - Gosta de chicoria]');
   ReadLn;
   WriteLN('O terceiro e: [Nome: ', boss.nome, ' / Arma: ', boss.arma.nome, '(dano: ', boss.arma.dano, ') / HP: ', boss.armadura.resistencia, ' / Caracteristica: lider do bando - Calvo - Os instintos mais primitivos]');
end;

procedure faseDeGuilherme(var pessoe: Personagem);
var
  boss: Personagem;
  npc1: Personagem;
  npc2: Personagem;
  escolha: Integer;
begin
// NPC
	npc1.nome := 'Euclydis';
	npc1.arma.nome := 'Garrafa de cahaca';
	npc1.arma.dano := 3;
	npc1.armadura.resistencia := 5;
	
	npc2.nome := 'Dakunha';
	npc2.arma.nome := 'Adaga de Jerico';
	npc2.arma.dano := 4;
	npc2.armadura.resistencia := 6;
	
	boss.nome := 'XANDÃO';
	boss.arma.nome := 'SEUS PUNHOS';
	boss.arma.dano := 10;
	boss.armadura.resistencia := 20;

//ContextualizaÃ§Ã£o
	WriteLn(pessoe.nome, ', em meio a sua jornada, econtra uma senhora misteriosa que parece precisar de ajuda.');
	ReadLn;
	WriteLn('Voce escolhe falar com ela? [SIM: 1 / NAO: 2]');
	ReadLn(escolha);
	
	While escolha <> 1 do
	begin
		WriteLn('Vai falar com ela sim');
		WriteLn('Voce escolhe falar com ela? [SIM: 1 / NAO: 2]');
		ReadLn(escolha);
	end;
	
	explicaSenhora(pessoe);
	WriteLn('VOCE IRA AJUDAR ESSA POBRE SENHORA??? [SIM: 1 / NAO: 2]');
	ReadLn(escolha);
	
	While escolha <> 1 do
	begin
		WriteLn('Vai ajudar sim');
		WriteLn('VOCE IRA AJUDAR ESSA POBRE SENHORA??? [SIM: 1 / NAO: 2]');
		ReadLn(escolha);
	end;
	
	bar(pessoe);
	WriteLn('O que voce faz enquanto espera? [Ouvir trovador: 1 / Pedir uma bebida: 0]');
	ReadLn(escolha);
	if (escolha = 1) then
 		trovador
	else
	begin
  	WriteLn('Voce bebe rum no balcao');
  	WriteLN('Quando ', pessoe.nome, ' da o ultimo gole na bebdia... O bando "Indicador" adentra o recinto com violencia!');
	end;
	
	WriteLn('========================');
	ReadLn;
	encontro(npc1, npc2, boss);
//COMBATE
	WriteLn('==================================');
	WriteLn('Primeiro Voce enfrenta ', npc1.nome);
	combate(pessoe, npc1);
		
	if pessoe.armadura.resistencia > 0 then
	begin
		WriteLn('========================');
		WriteLn('Agora voce enfrenta ', npc2.nome);
		combate(pessoe, npc2);

		if pessoe.armadura.resistencia > 0 then
		begin
			WriteLn('========================');
			WriteLn('Agora voce enfrenta ', boss.nome);
			combate(pessoe, boss);

			if pessoe.armadura.resistencia > 0 then
			begin
				WriteLn(pessoe.nome, ' recupera o rolo de macarrao magico da Senhora e ganha 5 moedas de ouro');
				WriteLn('FIM');
				ReadLn;
				WriteLn('CREDITOS');
				WriteLn('========');
				ReadLn;
				WriteLn('Roteiro: Esguixo');
				ReadLn;
				Writeln('Código: Esguixo');
				ReadLn;
				WriteLn('Direcao: Esguixo');
				ReadLn;
				WriteLn('Com participacao especial de HISTORIAS CRISTAS DO ELON MUSK - Trovador: MATOS, CUIDE');
			end;
		end;
	end
	
	else
	WriteLn('Vai ajudar sim!');
end;

begin
  apresentar(personage);
  osSuburbiosDoBurgo(personage);
  ReadLn();
  WriteLn('');
  faseDeGuilherme(personage);
end.