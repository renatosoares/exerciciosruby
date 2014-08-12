#Questao 1
def maior2 (a,b)
  	if (a>b) then
		return a
	else
		return b
	end
end

#Questao 2
def maior5 (a,b,c,d,e)
  	if (a > b and a > c and a > d and a > e) then
		return a
	elsif (b > c and b > d and b > e) then
		return b
	elsif (c > d and c > e) then
		return c
	elsif (d > e) then
		return d
	else
		return e	
	end
end

#Questao 3
# Escreva uma funcao, chamada quantidade_de_vogais, que receba uma string e retorne a quantidade de vogais da string. A funcao deve verificar se o parametro  e do tipo string e, caso, nao seja, a funcao deve retornar −1. 
def quantidade_de_vogais (s)
	a = []
	b = []
	if (s != s.to_i) then
		s = s.downcase
		a = s.split("")
		for i in a do
			if (i == "a" or i == "e" or i == "e" or i == "i" or i == "o" or i == "u")then
				b << i
			end
		end
		return b.size
	else
		return -1
	end
	
end


#Questao 4
def impar? (n)
  	if (n % 2 == 1) then
		true
	else
		false
	end
end

#Questao 5
def conta_palavras (texto)
	a = []
	if (texto == texto.to_s) then
		a = texto.split(" ")
		return a.size
	end
end

#Questao 6
def intervalo_a_b (n1,n2)
	a = []
	if (n1 > n2) then
		maior = n1
		menor = n2
	else
		maior = n2
		menor = n1
	end
	for i in  menor..maior do
		a << i
	end
	return a
end

#Questao 7
def soma_elementos_matriz (m)
	soma = 0
	for c in m do
		for l in c do
			soma = soma + l
		end
	end
 	return soma
end

#Questao 8
def fatorial (n)
	fatorial = 1
	for i in 1..n
		fatorial = fatorial * i
	end
	return fatorial
end

#Questao 9
#Escreva uma funcao que receba um numero inteiro e retorne um array com os divisores do numero, incluindo o 1 e ele mesmo.
def divisores (n)
	a = []
		for i in 1..n do
			if (n % i == 0) then
				a << i
			end
		end
	return a
end

#Questao 10
#Escreva uma funcao que receba um numero inteiro e verifique se o mesmo e um numero primo, retornando true ou false. 
def primo? (n)
	numeros = []
	for p in 1..n do
		if (n % p == 0) then
			numeros << p
		end
	end	
	if (numeros.size == 2) then
		true
	else
		false
	end
end


#Questao 11
#Escreva uma funcao que receba dois numeros inteiros e retorne true se os mesmo sao primos entre si ou false caso contrario.
def primos_entre_si? (n1,n2)
	maior =
	if (n1 > n2) then
		n1
	else
		n2
	end
	a = []
		
	for s in 1..maior do
		if (n1 % s == 0 and n2 % s == 0) then
		a << s
		end
	end
	if (a.size <= 2) then
		return true
	else
		return false
	end
end


#Questao 12
def mdc (n1,n2)
	if (n1 > n2) then
		maior = n1
	else
		maior = n2
	end
	for m in 1..maior do
		if (n1 % m == 0 and n2 % m == 0) then
			recebe = m
		end
	end
	return recebe
end

#Questao 13
def mmc (n1,n2)
	if (n1 < n2) then
		menor = n1
	else
		menor = n2
	end
	menor = menor - 1
	while (menor != -1) do
			menor = menor + 1
		if ((menor % n1 == 0) and (menor % n2 == 0) ) then
			return menor
			menor = -1
		end
	end

end


#Questao 14

# Escreva uma funcao, chamada transcreve_numero(num),
# que transcreva os dıgitos de um dado numero de telefone.
# A funcao deve receber uma string contendo um numero
# telefonico e deve retornar uma lista (array)
# dos nomes dos dıgitos. Qualquer caractere que nao seja
# numero deve ser ignorado. Considerando que o conteudo
# da string passada seja "3221-1234" a funcao deve retornar o array
# ["tres","dois","dois","um","um","dois","tres","quatro"].

def transcreve_numero (telefone)
	separa = []
	separa = telefone.split("")
	numeros = []
	numeros = ["zero", "um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove"]
	extenso = []
	for n in separa do
		if (n == "0" or n == "1" or n == "2" or n == "3" or n == "4" or n == "5" or n == "6" or n == "7" or n == "8" or n == "9") then
			n = n.to_i
			extenso << numeros[n]
		end
	end
	return extenso
end

#Questao 15

# Escreva uma funcao que receba duas matrizes
# e identifique as coincidencias entre elas,
# ou seja, os elementos que se encontram na
# mesma posiao (linha e coluna). A funao deve
# retornar uma nova matriz contendo os elementos
# que coincidem nas suas posicoes e 0 (zero) nas
# demais posicoes. Todas as matrizes recebidas pela
# funcao e a matriz retornada devem ter o mesmo
# numero de linhas e colunas.

def coincidencia_matriz(m1, m2)
	m3 = []
		
	for l in 0..2 do
		m3[l] = []
		for c in 0..2 do
	
			if (m1[l][c] == m2[l][c]) then
				m3[l][c] = m1[l][c]
			else
				m3[l][c] = 0
			end
		end
	end 
 return m3
end

#Questao 16
def sublista_ordenada(a)
	cont = 0
	ilinha = 0
	icoluna = 0
	sub = []
	sub[0] = []
	for e in a do
		sub[ilinha][icoluna] = e
		if (e > a[cont]) then
		ilinha = ilinha + 1
		sub[ilinha] = []
		icoluna = 0	
		else
			icoluna = icoluna + 1
		end
	end
	if (sub[0].size > sub[1].size and sub[0].size > sub[2].size) then
		valor = 0
	elsif (sub[1].size > sub[2].size) then
		valor = 1
	else
		valor = 2
	end
	return sub[valor]
end

#Questao 17
def triangular_superior? (matriz)
	if (matriz[1][matriz[1].size-1] == 0) then
		return false
	else
		return true
	end
end

#Questao 18
def massa_molecula (molecula)

end

#Questao 19
def quadrado_magico? (matriz)

end

#Questao 20
def move_direita(labirinto)

end
