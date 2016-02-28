Project Euler solutions in Ruby
===============================

![fw](http://projecteuler.net/profile/fw.png "fw")

<p>
Bei <a href="http://www.projecteuler.net/">Project Euler</a> handelt es sich um
eine Webseite mit einer Art "Programmierwettbewerb" für mehr oder weniger
komplexe mathematische Problemstellungen, in erster Linie
zahlentheoretischer Natur. Das Problem (bzw. der Reiz) der meisten Aufgaben ist, dass sie prinzipiell sehr
leicht zu lösen sind, die Lösung, auf die man "direkt" kommt aber meistens extrem ineffizient ist
und man sich etwas mit dem mathematischen Background beschäftigen muss, um den eigenen
Algorithmus zu optimieren.
Da ich schon lange die Programmiersprache
<a href="http://en.wikipedia.org/wiki/Ruby_(programming_language)">Ruby</a> lernen wollte war das eine gute Gelegenheit für mich.
</p>

<p>
Die meisten meiner Lösungen sind nicht besonders effizient (und teilweise vermutlich auch
mathematisch nicht wirklich optimal). Mein Ziel war es Ruby zu lernen, nicht die Aufgaben
möglichst geschickt zu lösen. Dennoch sind fast alle meine Lösungen in deutlich weniger als
einer Minute (die meisten sogar in weniger als einer Sekunde auf einem halbwegs
aktuellen Prozessor) ausführbar (und das obwohl Ruby eine
relativ langsam interpretierte Sprache ist).
</p>

<p>
Viele der Aufgaben sind etwas eleganter lösbar, wenn man Ruby Libraries benutzt
(z.B. die <tt>Prime</tt> Klasse aus 'mathn'). Ich habe darauf absichtlich verzichtet, da ich
alle Algorithmen selbst implementieren wollte.
</p>

<p>
<b>Achtung: </b> Viele Leute beschweren sich darüber, dass im Netz Lösungen zu den
Aufgaben
veröffentlicht werden. Ich habe kein Problem damit, im Gegenteil, ich finde es
sinnvoll, dass Lösungen veröffentlicht werden damit man sich auch andere Ansätze
anschauen
und dadurch noch mehr über das Problem lernen kann.
Bis auf ein paar wenige Ausnahmen habe ich alle Probleme vollständig selbst gelöst
und mir erst im Nachhinein die Programme anderer angeschaut.
Wer die Lösungen einfach nur kopiert
um möglichst viele Probleme abzuhaken ist selbst schuld! Dadurch verdirbt man sich
nur den Spass ohne jeglichen Nutzen davon zu haben.
</p>

<h2><a name="1"></a>Problem 1</h2>
Find the sum of all the multiples of 3 or 5 below 1000.
<p><a href="001.rb">001.rb</a></p>Stichwort <a href="http://de.wikipedia.org/wiki/Kleiner_Gau%C3%9F">kleiner Gauss</a>.
<h2><a name="2"></a>Problem 2</h2>
Find the sum of all the even-valued terms in the <a href="http://de.wikipedia.org/wiki/Fibonacci-Folge">Fibonacci sequence</a> which do not exceed four million.
<p><a href="002.rb">002.rb</a></p>
<h2><a name="3"></a>Problem 3</h2>
What is the largest prime factor of the number 600851475143 ?
<p><a href="003.rb">003.rb</a></p>Diese Lösung gefällt mir sehr gut. Sie ist extrem schnell
(O(n<sup>1/2</sup> log<sup>2</sup>(n))), gleichzeitig sehr einfach zu
verstehen und benutzt nur indirekt irgendwelche Eigenschaften von
Primzahlen. Ein Beweis der Korrektheit findet sich in
<a href="http://www.scs.carleton.ca/~michiel/primes.pdf">
Primality testing in deterministic polynomial time</a> von
<a href="http://www.scs.carleton.ca/~michiel/">Professor
Michiel Smid</a> (Seite 24 und 25).
<h2><a name="4"></a>Problem 4</h2>
Find the largest <a href="http://de.wikipedia.org/wiki/Zahlenpalindrom">palindrome</a> made from the product of two 3-digit numbers.
<p><a href="004.rb">004.rb</a></p>Optimierung: Palindrome gerader Länge sind immer durch 11 teilbar.
<h2><a name="5"></a>Problem 5</h2>
What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?
<p><a href="005.rb">005.rb</a></p>Stichwort <a href="http://de.wikipedia.org/wiki/Gr%C3%B6%C3%9Fter_gemeinsamer_Teiler_und_kleinstes_gemeinsames_Vielfaches">kleinstes gemeinsames Vielfaches</a>.
<h2><a name="6"></a>Problem 6</h2>
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
<p><a href="006.rb">006.rb</a></p>Stichwort <a href="http://de.wikipedia.org/wiki/Formelsammlung_Algebra#Summenformeln">Gaussche Summenformeln</a>.
<h2><a name="7"></a>Problem 7</h2>
What is the 10001st prime number?
<p><a href="007.rb">007.rb</a></p>Stichwort <a href="http://en.wikipedia.org/wiki/Prime_number_theorem">Primzahlsatz</a> und <a href="http://en.wikipedia.org/wiki/Prime_sieve">Primzahlsieb</a>.
<h2><a name="8"></a>Problem 8</h2>
Find the greatest product of five consecutive digits in the 1000-digit number.
<p><a href="008.rb">008.rb</a></p>
<h2><a name="9"></a>Problem 9</h2>
There exists exactly one <a href="http://de.wikipedia.org/wiki/Pythagor%C3%A4isches_Tripel">Pythagorean triplet</a> for which a + b + c = 1000. Find the product abc.
<p><a href="009.rb">009.rb</a></p>
<h2><a name="10"></a>Problem 10</h2>
Find the sum of all the primes below two million.
<p><a href="010.rb">010.rb</a></p>
<h2><a name="11"></a>Problem 11</h2>
What is the greatest product of four adjacent numbers in any direction (up, down, left, right, or diagonally) in the 20x20 grid?
<p><a href="011.rb">011.rb</a></p>Nicht so sch&ouml;n. Mehr oder weniger Brute Force, läuft aber in wenigen Millisekunden.
<h2><a name="12"></a>Problem 12</h2>
What is the value of the first <a href="http://de.wikipedia.org/wiki/Dreieckszahl">triangle number</a> to have over five hundred divisors?
<p><a href="012.rb">012.rb</a></p><ul><li>Idee 1: Die <a href="http://de.wikipedia.org/wiki/Teileranzahl">Teileranzahlfunktion</a> ist <a href="http://de.wikipedia.org/wiki/Zahlentheoretische_Funktion">zahlentheoretisch</a> (und n, n+1 sind teilerfremd)</li><li>Idee 2: Für jeden Teiler k &lt; sqrt(n) ist n/k &gt; sqrt(n)</li></ul>
<h2><a name="13"></a>Problem 13</h2>
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
<p><a href="013.rb">013.rb</a></p>
<h2><a name="14"></a>Problem 14</h2>
The following iterative sequence is defined for the set of positive integers:<br/>
n -> n/2 (n is even)<br/>
n -> 3n + 1 (n is odd)<br/>
Which starting number, under one million, produces the longest chain?
<p><a href="014.rb">014.rb</a></p>Stichwort <a href="http://en.wikipedia.org/wiki/Dynamic_programming">Dynamic Programming</a>.
<h2><a name="15"></a>Problem 15</h2>
How many routes are there through a 20x20 grid?
<p><a href="015.rb">015.rb</a></p>Stichwort <a href="http://en.wikipedia.org/wiki/Dynamic_programming">Dynamic Programming</a>.
<h2><a name="16"></a>Problem 16</h2>
What is the sum of the digits of the number 2<sup>1000</sup>?
<p><a href="016.rb">016.rb</a></p>Naja, das geht bestimmt auch "mathematischer" :-)
<h2><a name="17"></a>Problem 17</h2>
If all the numbers from 1 to 1000 ("one thousand") inclusive were written out in words, how many letters would be used?
<p><a href="017.rb">017.rb</a></p>
<h2><a name="18"></a>Problem 18</h2>
Find the maximum total from top to bottom of the triangle below.
<p><a href="018.rb">018.rb</a></p>
<h2><a name="19"></a>Problem 19</h2>
How many Sundays fell on the first of the month during the twentieth century?
<p><a href="019.rb">019.rb</a></p>Idee: <a href="http://de.wikipedia.org/wiki/Zellers_Kongruenz">Zellers Kongruenz</a>. Hätte man einfacher haben können mit den Ruby <tt>Date</tt> Funktionen, wollte ich aber nicht.
<h2><a name="20"></a>Problem 20</h2>
Find the sum of digits in 100!
<p><a href="020.rb">020.rb</a></p>Siehe <a href="#16">Problem 16</a>.
<h2><a name="21"></a>Problem 21</h2>
Let d(n) be defined as the sum of proper divisors of n.
If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each of a and b are called amicable numbers.
Evaluate the sum of all the amicable numbers under 10000.
<p><a href="021.rb">021.rb</a></p>
<h2><a name="22"></a>Problem 22</h2>
Using <a href="http://projecteuler.net/project/names.txt">
names.txt</a>, a text file containing over five-thousand first names, begin by
sorting it into alphabetical order. Then working out the alphabetical value for
each name, multiply this value by its alphabetical position in the list to obtain
a name score.
For example, when the list is sorted into alphabetical order, COLIN, which is worth
3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a
score of 938 × 53 = 49714.
What is the total of all the name scores in the file?
<p><a href="022.rb">022.rb</a></p>Schön kurz! Fast so unlesbar wie Perl Code :-)
<h2><a name="23"></a>Problem 23</h2>
It can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. Find the sum of all the positive integers which cannot be written as the sum of two <a href="http://de.wikipedia.org/wiki/Abundante_Zahl">abundant numbers</a>.
<p><a href="023.rb">023.rb</a></p>Doofe Lösung für eine doofe Aufgabe.
<h2><a name="24"></a>Problem 24</h2>
What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
<p><a href="024.rb">024.rb</a></p>Hier muss ich zugeben, dass ich nur auf extrem langsame Lösungen gekommen bin und daher etwas gegooglet habe. Die Idee ist von <a href="http://blogs.msdn.com/chrsmith/archive/2008/03/22/project-euler-problem-24.aspx">Chris Smith</a> geklaut.
<h2><a name="25"></a>Problem 25</h2>
What is the first term in the Fibonacci sequence to contain 1000 digits?
<p><a href="025.rb">025.rb</a></p>
<h2><a name="26"></a>Problem 26</h2>
Find the value of d &lt; 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
<p><a href="026.rb">026.rb</a></p>Mögliche Optimierung: Zahlen mit endlicher Entwicklung von vornerein ausschliessen (das sind genau die, die keine anderen Primteiler als 2 oder 5 haben).
<h2><a name="27"></a>Problem 27</h2>
Euler published the remarkable quadratic formula: n<sup>2</sup> + n + 41.
It turns out that the formula will produce 40 primes for the consecutive values n = 0 to 39. 
Considering quadratics of the form: n<sup>2</sup> + an + b, where |a|&nbsp;&lt;&nbsp;1000 and
|b|&nbsp;&lt;&nbsp;1000.
Find the product of the coefficients, a and b, for the quadratic expression that produces the
maximum number of primes for consecutive values of n, starting with n&nbsp;=&nbsp;0.
<p><a href="027.rb">027.rb</a></p>Sehr interessante Aufgabe (siehe auch <a href="http://mathworld.wolfram.com/Prime-GeneratingPolynomial.html">hier</a>)! Ideen: an <i>n=0</i> sieht man, dass <i>b</i> prim sein muss (und positiv) und
an <i>n=1</i> sieht man, dass <i>a+b+1</i> ebenfalls prim sein muss.
<h2><a name="28"></a>Problem 28</h2>
Starting with the number 1 and moving to the right in a clockwise direction a <i>n</i> by <i>n</i> spiral is formed.
What is the sum of both diagonals in a 1001 by 1001 spiral?
<p><a href="028.rb">028.rb</a></p>Nette Aufgabe, nicht soo schöne Lösung, aber schnell (&lt; 1 ms).
<h2><a name="29"></a>Problem 29</h2>
How many distinct terms are in the sequence generated by a<sup>b</sup> for 2 &lt;= a,b &lt;= 100?
<p><a href="029.rb">029.rb</a></p>Ziemlich straight-forward und schön kurz :-)
<h2><a name="30"></a>Problem 30</h2>
Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
<p><a href="030.rb">030.rb</a></p>Gleicher Algorithmus wie bei <a href="#34">34</a>.
<h2><a name="31"></a>Problem 31</h2>
How many different ways can £2 be made using any number of coins?
<p><a href="031.rb">031.rb</a></p>
<h2><a name="32"></a>Problem 32</h2>
The product 7254 is unusual, as the identity, 39 x 186 = 7254, containing multiplicand, multiplier, and product
is 1 through 9 <a href="http://de.wikipedia.org/wiki/Pandigitale_Zahl">pandigital</a>. Find the sum of all
products whose multiplicand/multiplier/product identity can be
written as a 1 through 9 pandigital.
<p><a href="032.rb">032.rb</a></p>Idee: Durch Abschätzungen des Logarithmus zur Basis 10 und der
<a href="http://de.wikipedia.org/wiki/Gaussklammer#Eigenschaften">Gaussklammer</a>, kann man leicht zeigen, dass
<tt>4&nbsp;-&nbsp;length(a)&nbsp;&lt;=&nbsp;length(b)&nbsp;&lt;=&nbsp;5&nbsp;-&nbsp;length(a)</tt> gelten muss.
Das schränkt den Suchraum bereits
deutlich ein. Weiterhin müssen keine Zahlen getestet werden, die die Ziffer 0 enthalten oder die eine Ziffer
doppelt enthalten.
<h2><a name="33"></a>Problem 33</h2>
The fraction 49/98 is a curious fraction (...) 49/98 = 4/8, which
is correct (...). There are exactly four non-trivial examples of this type
of fraction, less than one in value, and containing two digits in the
numerator and denominator. If the product of these four fractions is given
in its lowest common terms, find the value of the denominator.
<p><a href="033.rb">033.rb</a></p>Winzige Optimierung: (10a+b)/(10b+c) = a/c gilt genau dann, wenn (9a+b)c = 10ab.
<h2><a name="34"></a>Problem 34</h2>
Find the sum of all numbers which are equal to the sum of the factorial of their digits.
<p><a href="034.rb">034.rb</a></p>Idee: 7*9! ist eine obere Schranke, denn ab 7 Ziffern ist die größtmögliche Zahl (alle Ziffern 9) größer als die größtmögliche Summe der Fakultäten der Ziffern (Anzahl Ziffern mal 9!). Als kleine Optimierung werden noch Summen in einer Tabelle gespeichert (hat bei mir fast einen Faktor von 3 ausgemacht).
<h2><a name="35"></a>Problem 35</h2>
The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
How many circular primes are there below one million?
<p><a href="035.rb">035.rb</a></p>Diese Lösung gefällt mir nicht wirklich, sie ist viel zu langsam. Eine mögliche Optimierung: Die Dezimalentwicklung einer zirkulären Primzahl kann niemals die Ziffern 0,2,4,5,6 oder 8 enthalten.
<h2><a name="36"></a>Problem 36</h2>
Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
<p><a href="036.rb">036.rb</a></p>Ruby ist toll :-)
<h2><a name="37"></a>Problem 37</h2>
The number 3797 has an <a href="http://de.wikipedia.org/wiki/Truncatable_Prime">interesting property</a>.
Being prime itself, it is possible to continuously remove digits from
left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797,
379, 37, and 3. Find the sum of the only eleven primes that are both truncatable from left to right and right to left.
<small>(NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes)</small>
<p><a href="037.rb">037.rb</a></p>Sehr schöne Aufgabe mit einer sehr schnellen Lösung. Naiver Ansatz: Liste von Primzahlen erstellen (mit einem Primzahlsieb), dann dadrin die truncatables rausfischen. Leider viel zu langsam. Besserer Ansatz:
Alle truncatable Primes on-the-fly generieren (mit Trial Division als Test statt dem Sieb) und dabei ausnutzen, dass
diese nicht die Ziffern 0, 4, 6 und 8
enthalten können (sonst ist eine der Zahlen gerade), nicht mit 1 anfangen und nicht mit 1 enden können
(1 ist nicht prim) und nicht zwei aufeinander folgende gleiche Ziffern enthalten können (sonst ist eine der Zahlen
durch 11 teilbar).
<h2><a name="39"></a>Problem 39</h2>
If p is the perimeter of a right angle triangle {a,b,c}, which value, for p &lt;= 1000, has the most solutions?
<p><a href="039.rb">039.rb</a></p>Schöne Aufgabe. Erste Idee: Für alle <i>p</i>&lt;=1000 alle möglichen <a href="http://de.wikipedia.org/wiki/Pythagor%C3%A4isches_Tripel">pythagor&auml;ischen Tripel</a> generieren. Das war allerdings viel zu langsam. Neue Idee: Alle möglichen Tripel generieren, deren Summe kleiner als 1000 ist, und dann hinterher das Maximum suchen.
<h2><a name="38"></a>Problem 38</h2>
What is the largest 1 to 9 <a href="http://de.wikipedia.org/wiki/Pandigitale_Zahl">pandigital</a>
9-digit number that can be formed as the concatenated product of
an integer with (1,2, ... , <i>n</i>) where <i>n</i> &gt; 1?
<p><a href="038.rb">038.rb</a></p>
<h2><a name="40"></a>Problem 40</h2>
An irrational decimal fraction is created by concatenating the positive integers.
If d<sub>n</sub> represents the n<sup>th</sup> digit of the fractional part, find the value of the following expression:
d<sub>1</sub>&nbsp;×&nbsp;d<sub>10</sub>&nbsp;×&nbsp;d<sub>100</sub>&nbsp;×&nbsp;d<sub>1000</sub>&nbsp;×&nbsp;d<sub>10000</sub>&nbsp;×&nbsp;d<sub>100000</sub>&nbsp;×&nbsp;d<sub>1000000</sub>
<p><a href="040.rb">040.rb</a></p>Eigentlich hätte ich gerne eine Formel gehabt um die Ziffern direkt zu berechnen (ohne ALLE anderen auch zu speichern). Habe dann aber aufgegeben,
als ich gemerkt habe, dass es auf diese (dumme) Weise immernoch recht schnell (~1 Sekunde) ist.
<h2><a name="41"></a>Problem 41</h2>
What is the largest n-digit <a href="http://de.wikipedia.org/wiki/Pandigitale_Zahl">pandigital</a> prime that exists?
<p><a href="041.rb">041.rb</a></p>Idee: Die Zahl kann weder 8-pandigital noch 9-pandigital sein, denn solche Zahlen haben eine Quersumme von 3
und sind damit selbst durch 3 teilbar, also nicht prim. (Anmerkung zum Code: 5039&nbsp;=&nbsp;7!-1. <tt>perm(k,s)</tt>
erzeugt für jedes 0&nbsp;&lt;=&nbsp;k&nbsp;&lt;&nbsp;s.length! eine eindeutige Permutation von <tt>s</tt>)
<h2><a name="42"></a>Problem 42</h2>
Using <a href="http://projecteuler.net/project/words.txt">words.txt</a>, a 16K text file containing nearly two-thousand common English words, how many are triangle words (sum of alphabetical values of letters is a triangle number)?
<p><a href="042.rb">042.rb</a></p>
<h2><a name="43"></a>Problem 43</h2>
The number, 1406357289, is a 0 to 9 <a href="http://de.wikipedia.org/wiki/Pandigitale_Zahl">pandigital</a>
number because it is made up of each of the digits 0 to 9 in some order,
but it also has a rather interesting sub-string divisibility property.

Let d<sub>1</sub> be the 1<sup>st</sup> digit, d<sub>2</sub> be the 2<sup>nd</sup> digit,
and so on. In this way, we note the following:

<ul>
 <li>d<sub>2</sub> d<sub>3</sub> d<sub>4</sub> = 406 is divisible by 2</li>
 <li>d<sub>3</sub> d<sub>4</sub> d<sub>5</sub> = 063 is divisible by 3</li>
 <li>d<sub>4</sub> d<sub>5</sub> d<sub>6</sub> = 635 is divisible by 5</li>
 <li>d<sub>5</sub> d<sub>6</sub> d<sub>7</sub> = 357 is divisible by 7</li>
 <li>d<sub>6</sub> d<sub>7</sub> d<sub>8</sub> = 572 is divisible by 11</li>
 <li>d<sub>7</sub> d<sub>8</sub> d<sub>9</sub> = 728 is divisible by 13</li>
 <li>d<sub>8</sub> d<sub>9</sub> d<sub>10</sub> = 289 is divisible by 17</li>
</ul>

Find the sum of all 0 to 9 pandigital numbers with this property.
<p><a href="043.rb">043.rb</a></p>Ziemlich straight-forward und recht schnell.
<h2><a name="44"></a>Problem 44</h2>
Find the pair of
<a href="http://de.wikipedia.org/wiki/F%C3%BCnfeckszahl">pentagonal numbers</a>,
P<sub>j</sub> and P<sub>k</sub>,
for which their sum and difference is pentagonal and
D&nbsp;=|P<sub>k</sub>&nbsp;-&nbsp;P<sub>j</sub>| is minimised; what
is the value of D?
<p><a href="044.rb">044.rb</a></p>Idee: Abstand zwischen P<sub>k</sub> und P<sub>k+1</sub> ist 3k+1.
<h2><a name="45"></a>Problem 45</h2>
Find the next <a href="http://de.wikipedia.org/wiki/Dreieckszahl">triangle number</a> (&gt; 40755) that is also
<a href="http://de.wikipedia.org/wiki/Sechseckszahl">pentagonal</a>
and <a href="http://de.wikipedia.org/wiki/Fünfeckszahl">hexagonal</a>.
<p><a href="045.rb">045.rb</a></p>Sehr schöne Aufgabe! Idee: Jede hexagonale Zahl ist eine Dreieckszahl, also können die Dreieckszahlen
komplett ignoriert werden. Ausserdem ist eine natürliche Zahl <i>n</i> genau dann pentagonal, wenn
<i>sqrt(24n+1)+1</i> eine durch 6 teilbare natürliche Zahl ist.
<h2><a name="46"></a>Problem 46</h2>
What is the smallest odd composite that cannot be written as the
sum of a prime and twice a square?
<p><a href="046.rb">046.rb</a></p>
<h2><a name="47"></a>Problem 47</h2>
Find the first four consecutive integers to have four distinct primes factors (each).
What is the first of these numbers?
<p><a href="047.rb">047.rb</a></p>
<h2><a name="48"></a>Problem 48</h2>
Find the last ten digits of the series, 1<sup>1</sup> + 2<sup>2</sup> + 3<sup>3</sup> + ... + 1000<sup>1000</sup>.
<p><a href="048.rb">048.rb</a></p>Idee: In jedem Schritt nur die letzten 10 Ziffern betrachten.
<h2><a name="49"></a>Problem 49</h2>
The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by
3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each
of the 4-digit numbers are permutations of one another. (...) There is one other
4-digit increasing sequence. What 12-digit number do you form by concatenating the
three terms in this sequence?
<p><a href="049.rb">049.rb</a></p>Schöne Aufgabe!
<h2><a name="50"></a>Problem 50</h2>
Which prime, below one-million, can be written as the sum of the most consecutive primes?
<p><a href="050.rb">050.rb</a></p>
<h2><a name="51"></a>Problem 51</h2>
Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.
<p><a href="051.rb">051.rb</a></p>Diese Aufgabe hat mir überhaupt nicht gefallen. Das einzige was man hier eventuell lernt ist, wie man Teilmengen/Pattern enumeriert, was aber eigentlich klar ist, wegen der natürlichen Bijektion zwischen <a href="https://de.wikipedia.org/wiki/Potenzmenge">Pot</a>(M) und {0,1}<sup>|M|</sup>. Ein paar Optimierungen: Die Pattern 0...0 und 1...1 braucht man nicht zu betrachten. Außerdem braucht man keine Primzahlen mehr betrachten, die bereits in einer vorherigen Familie von Primzahlen generiert wurden. In dieser Aufgabe verstecken sich einige nervige Stolpersteine, z.B. darf man keine Zahlen mit führenden Nullen betrachten und die ursprüngliche Zahl, die zur Generierung genutzt wurde, muss nicht zwangsweise ein Teil der generierten Menge sein. Insgesamt läuft meine Lösung in etwa 15 Sekunden. Die obere Schranke von 10<sup>6</sup> war mehr oder weniger geraten.
<h2><a name="52"></a>Problem 52</h2>
Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.
<p><a href="052.rb">052.rb</a></p>Editor auf, Code runtergeschrieben, Editor zu, gestartet, tut.
<h2><a name="53"></a>Problem 53</h2>
How many, not necessarily distinct, values of <a href="http://de.wikipedia.org/wiki/Binomialkoeffizient"><sup>n</sup>C<sub>r</sub></a>, for 1 &lt;= n &lt;= 100, are greater than one-million?
<p><a href="053.rb">053.rb</a></p>Idee: <a href="http://de.wikipedia.org/wiki/Dynamische_Programmierung">Dynamische Programmierung</a> und <a href="http://de.wikipedia.org/wiki/Binomialkoeffizient#Rekursive_Darstellung_und_Pascalsches_Dreieck">Rekursionsformel</a> benutzen.
<h2><a name="54"></a>Problem 54</h2>
The file <a href="/content/euler/54_poker.txt">poker.txt</a> contains one-thousand random hands dealt
to two players. Each line of the file contains ten cards (separated by a single space): the first five
are Player 1's cards and the last five are Player 2's cards. How many hands does Player 1 win?
<p><a href="054.rb">054.rb</a></p>Lustige Aufgabe... Etwas lange L&ouml;sung.
<h2><a name="55"></a>Problem 55</h2>
If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.
A number that never forms a palindrome through the reverse and add process is called a <a href="http://de.wikipedia.org/wiki/Lychrel-Zahl">Lychrel number</a>.
(...) every number below ten-thousand, it will either (i) become a palindrome in less than fifty
iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to
a palindrome. How many Lychrel numbers are there below ten-thousand?
<p><a href="055.rb">055.rb</a></p>
<h2><a name="56"></a>Problem 56</h2>
Considering natural numbers of the form, a<sup>b</sup>, where a, b &lt; 100, what is the maximum digital sum?
<p><a href="056.rb">056.rb</a></p>
<h2><a name="57"></a>Problem 57</h2>
In the first one-thousand continued fraction expansions of sqrt(2), how many fractions contain a numerator with more digits than denominator?
<p><a href="057.rb">057.rb</a></p>Etwas tricky drauf zu kommen, aber im Nachhinein relativ simpel.
<h2><a name="58"></a>Problem 58</h2>
What is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?
<p><a href="058.rb">058.rb</a></p>Eigentlich eine leichte Aufgabe, aber trotzdem in Ruby recht langsam. Optimierungen, die mir eingefallen sind:
Zahlenreihe durch Additionen statt Multiplikationen erzeugen; Letzte Zahl ist ein Quadrat (also nie prim);
Nur ungerade Seitenl&auml;ngen betrachten; ...
<h2><a name="59"></a>Problem 59</h2>
A (...) encryption method is to take a text file, (...), then XOR each byte with a given value, taken from a secret key.
(...) the encryption key consists of three lower case characters. Using <a href="content/euler/59_cipher1.txt">cipher1.txt</a> (...),
a file containing the encrypted ASCII codes, and the knowledge that the plain text must contain common English words, decrypt the
message and find the sum of the ASCII values in the original text.
<p><a href="059.rb">059.rb</a></p>Nettes Problem. Idee: M&ouml;gliche Keys bruteforcen und die Ciphers, deren zugeh&ouml;riger Plaintext Sonderzeichen und nicht-darstellbare ASCII Zeichen enth&auml;lt, ignorieren.
<h2><a name="60"></a>Problem 60</h2>
Find the lowest sum for a set of five primes for which any two primes concatenate to produce another prime.
<p><a href="060.rb">060.rb</a></p>Mit kleinen Primzahlen anfangen und erstmal nur für jedes p eine möglichst große Liste mit Paaren (p,q<sub>1</sub>), (p,q<sub>2</sub>), ..., (p,q<sub>k</sub>) finden, für die die Bedingung erfüllt ist. Dann mit einer rekursiven Tiefensuche testen welche (q<sub>i</sub>, q<sub>j</sub>) aus dieser potentiellen Lösung die Bedingung erfüllen. Sobald wir eine 5 elementige Menge gefunden haben, können wir direkt aufhören. Wegen der Reihenfolge in der getestet wird, ist diese auf jeden Fall die mit der kleinsten Summe. Läuft in etwa 3 Sekunden.
<h2><a name="61"></a>Problem 61</h2>
Find the sum of the only ordered set of six cyclic 4-digit numbers for which each polygonal type triangle, square, pentagonal, hexagonal, heptagonal, and octagonal, is represented by a different number in the set.
<p><a href="061.rb">061.rb</a></p>Keine Tricks, einfach (sehr) schmutzig runtergecodet.
<h2><a name="62"></a>Problem 62</h2>
Find the smallest <a href="http://de.wikipedia.org/wiki/Kubikzahl">cube</a> for
which exactly five permutations of its digits are cube.
<p><a href="062.rb">062.rb</a></p>Nicht die schönste Lösung, aber blitzschnell. Idee: Alle Kubikzahlen generieren und
jedesmal wenn die Ziffernlänge sich erhöht hat, nachgucken ob wir bereits einen Treffer haben.
Die Rechnungen werden in einem Hash gespeichert, dessen Key die "sortierte Zahl" ist (denn das
ist offensichtlich eine Normalform für die Bahnen der Zahl unter Permutationen).
<h2><a name="63"></a>Problem 63</h2>
How many <i>n</i>-digit positive integers exist which are also an <i>n</i><sup>th</sup> power?
<p><a href="063.rb">063.rb</a></p>Tipp: Man rechnet leicht nach, dass die Basis nicht größer als 9 sein darf.
<h2><a name="64"></a>Problem 64</h2>
How many continued fractions for N &lt;= 10000 have an odd period?
<p><a href="064.rb">064.rb</a></p>Einen Algorithmus zur Berechnung der Kettenbruchentwicklung von sqrt(N) findet man bei <a href="http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Continued_fraction_expansion">Wikipedia</a>. Für jeden davon bestimmt man die Periodenlänge indem man prüft wann sich eine Konfiguration wiederholt (jeder Wert hängt nur von dem vorherigen ab). Als kleine Optimierung ist mir aufgefallen, dass alle Werte mit ungeraden Periodenlängen immer d<sub>i-1</sub>=1 haben. Ich weiß allerdings nicht wieso (bzw. ob das überhaupt <b>immer</b> stimmt).
<h2><a name="65"></a>Problem 65</h2>
Find the sum of digits in the numerator of the 100<sup>th</sup> convergent
of the <a href="http://de.wikipedia.org/wiki/Kettenbruch">continued fraction</a> for
<i><a href="http://de.wikipedia.org/wiki/Eulersche_Zahl">e</a></i>.
<p><a href="065.rb">065.rb</a></p>G&auml;hn. :-)
<h2><a name="66"></a>Problem 66</h2>
Consider quadratic Diophantine equations of the form: x<sup>2</sup> - Dy<sup>2</sup> = 1. Find the value of D &lt;= 1000 in minimal solutions of x for which the largest value of x is obtained.
<p><a href="066.rb">066.rb</a></p>Eine interessante Aufgabe mit viel Theorie dahinter, die mich einige Zeit gekostet hat.
Gl&uuml;cklicherweise habe ich vor kurzem eine Vorlesung &uuml;ber algebraische Zahlentheorie geh&ouml;rt
und habe daher erkannt, dass man hier die sogenannte <i>Grundeinheiten</i> im Ganzheitsring
des quadratischen Zahlk&ouml;rpers <b>Q(sqrt(D))</b> bestimmen soll. Habe mich dann etwas
schlau gemacht und herausgefunden, dass die L&ouml;sung des Problems in dem generieren der
Kettenbruchapproximationen liegt (sqrt(D) ist irrational falls D kein Quadrat ist und hat daher
eine unendliche Kettenbruchentwicklung). Ein paar Links als Anlaufpunkt:
<a href="http://en.wikipedia.org/wiki/Continued_fraction#Infinite_continued_fractions">Infinite continued fractions</a>,
<a href="http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Continued_fraction_expansion">Continued fraction expansion of squares</a>,
<a href="http://en.wikipedia.org/wiki/Pell's_equation">Pell Gleichung</a>.

<h2><a name="67"></a>Problem 67</h2>
Find the maximum total from top to bottom in <tt><a href="http://projecteuler.net/project/triangle.txt">triangle.txt</a></tt>, a 15K text file containing a triangle with one-hundred rows.
<p><a href="067.rb">067.rb</a></p>Siehe <a href="#18">Problem 18</a>.
<h2><a name="69"></a>Problem 69</h2>
Find the value of n &lt;= 1,000,000 for which n/<a href="http://de.wikipedia.org/wiki/Phi-Funktion">phi</a>(n)
is a maximum.
<p><a href="069.rb">069.rb</a></p>Erst etwas Brute-Force probiert, dann gemerkt, dass man die Aufgabe recht einfach (sogar ohne Computer) lösen
kann. Damit n/phi(n) gross wird, sollte phi(n) klein sein. Bekanntlich ist phi(p)=p-1 und phi
<a href="http://de.wikipedia.org/wiki/Zahlentheoretische_Funktion">zahlentheoretisch</a>.
Die korrekte Lösung ist daher phi(2*3*5*7*11*13*17) (Produkt der ersten k Primzahlen, so dass das Produkt
kleiner als die gegebene Schranke ist).
<h2><a name="70"></a>Problem 70</h2>
Find the value of n, 1&lt;n&lt;10<sup>7</sup>, for which phi(n) is a permutation of n and the ratio n/phi(n) produces a minimum.
<p><a href="070.rb">070.rb</a></p>Nette Aufgabe. Zunächst einmal gilt n/phi(n) = &prod;<sub>p|n</sub> (1+1/(p-1)). Die Exponenten spielen für den zu minimierenden Bruch also keine Rolle und wir konzentrieren uns auf Werte, die wenige, aber dafür sehr große, Primfaktoren haben. Da Primzahlen stets auf 1, 3, 7 oder 9 enden und phi(p)=p-1 gilt (phi(p) sich also nur an der letzten Stelle von p unterscheidet), kann phi(p) niemals eine Permutation von p sein. Als nächstes habe ich Zahlen mit genau zwei Primfaktoren probiert. Da ich davon ausgegangen bin, dass beide Faktoren ziemlich groß sein werden, habe ich auf Faktoren um sqrt(10<sup>7</sup>) beschränkt (mit einem Toleranzfaktor von 3). Das war bereits ausreichend, um die Lösung zu finden. Winzige Optimierung: Permutationen haben die gleiche Quersumme, also auch den gleichen Rest modulo 3; Ich betrachte daher nur Primzahlpaare p,q, für die n - phi(n) = p*q - (p-1)*(q-1) = p+q-1 durch 3 teilbar ist. Läuft in etwa einer Sekunde. Insgesamt eine schöne Aufgabe. Meine Lösung fühlt sich allerdings sehr "heuristisch" und speziell an. Ich bin mir nicht sicher, ob (mit anderen Parametern in der Aufgabenstellung) nicht eine Lösung mit mehr Primfaktoren möglich wäre.
<h2><a name="71"></a>Problem 71</h2>
By listing the set of reduced proper fractions n/d for d &lt;= 1,000,000 in ascending
order of size, find the numerator of the fraction immediately to the left of 3/7.
<p><a href="071.rb">071.rb</a></p>Lustigerweise habe ich mich genau in dem moment, in dem ich das Problem zum ersten mal gelesen habe,
zufälligerweise mit genau diesem Thema beschäftigt (in der Vorlesung 
<a href="http://www.matha.rwth-aachen.de:8054/">Algebraische&nbsp;Zahlentheorie&nbsp;II</a>
von Herrn Prof. Krieg an der RWTH Aachen) und wusste daher, dass
für zwei aufeinanderfolgende <a href="http://de.wikipedia.org/wiki/Farey-Folge">Farey-Brüche</a>
a/b und c/d die Beziehung bc-ad=1 gilt. Daher muss für
den gesuchten Bruch a/b die Beziehung a = (3b-1)/7 gelten.
<h2><a name="72"></a>Problem 72</h2>
How many elements would be contained in the set of reduced proper fractions n/d for d &lt;= 1,000,000?
<p><a href="072.rb">072.rb</a></p>Wenn man ein bisschen etwas über <a href="http://de.wikipedia.org/wiki/Farey-Folge">Farey-Brüche</a> weiss,
dann ist klar, dass hier die Summe über die Werte der <a href="http://de.wikipedia.org/wiki/Phi-Funktion">
Phi-Funktion</a> gesucht ist. Habe zuerst ewig lange irgendwelche optimierten Brute-Force Varianten ausprobiert
(die aber schon für deutlich kleinere Werte von d extrem langsam waren),
bis ich zufällig im Netz eine klevere Methode gefunden habe, um eine Wertetabelle der Phi-Funktion
aufzustellen (die ganz ähnlich funktioniert wie ein Primzahlsieb und <b>viel</b> schneller ist als
der naive Ansatz über den euklidischen Algorithmus).
<h2><a name="73"></a>Problem 73</h2>
How many fractions lie between 1/3 and 1/2 in the sorted set of reduced proper fractions for d &lt;= 12,000?
<p><a href="073.rb">073.rb</a></p>Relativ einfach. Brute-Force Idee ist ein O(n<sup>2</sup>) Algorithmus, der alle Brüche durchläuft. Es geht aber deutlich schneller: Die gekürzten Brüche zwischen 1/3 und 1/2 lassen sich (in Reihenfolge!) durch <a href="https://en.wikipedia.org/wiki/Farey_sequence">Farey-Folgen</a> aufzählen. Kennt man zwei aufeinander folgende Terme, so lässt sich der nächste Term leicht berechnen. Dies macht man, beginnend bei 1/3, bis man den Bruch 1/2 erreicht. Man muss also lediglich noch den Startwert, d.h. den Bruch direkt nach 1/3, bestimmen, was aber ebenfalls kein Problem ist, da zwei Brüche a/b, c/d genau dann benachbarte Farey-Brüche (mit max. Nenner n) sind, wenn bc-ad=1 und d &lt;= n &lt; b+d gilt. Mit a/b = 1/3 wählt man für die erste Bedingung c/d = 1/2. Da es sich um eine <a href="https://de.wikipedia.org/wiki/Lemma_von_B%C3%A9zout">Linearkombination des ggT=1</a> handelt, kann man Vielfache von a bzw. b addieren (ohne die erste Bedingung zu verletzen). Um die zweite Bedingung zu erfüllen wählt man floor((n-d)/b) als Vielfaches. Alternativ kann man auch einfach bei 0/1, 1/n starten und entsprechend später anfangen zu zählen (dauert etwa drei- bis viermal so lange).
<h2><a name="74"></a>Problem 74</h2>
The number 145 is well known for the property that the sum of the factorial of its digits is equal to 145: (...) How many chains, with a starting number below one million, contain exactly sixty non-repeating terms?
<p><a href="074.rb">074.rb</a></p>Öde. Bruteforce mit etwas Memoization.
<h2><a name="75"></a>Problem 75</h2>
(...) Given that L is the length of the wire, for how many values of L &lt;= 1,500,000 can exactly one integer sided right angle triangle be formed?
<p><a href="075.rb">075.rb</a></p>Schöne Aufgabe. Offensichtlich geht es hier um <a href="http://de.wikipedia.org/wiki/Pythagoreisches_Tripel">Pythagoreisches Tripel</a>. Die primitiven Tripel (d.h. die (a,b,c) mit ggT(a,b,c)=1) lassen sich effizient enumerieren (siehe Wikipedia). Man wählt n>m mit ggT(n,m)=1 und n,m mit unterschiedlicher Parität, dann durchläuft die Folge (n<sup>2</sup>-m<sup>2</sup>, 2mn, n<sup>2</sup>+m<sup>2</sup>) alle (primitiven) Tripel (mit Umfang L=2(n<sup>2</sup>+mn)). Anschließend kann man alle (die primitiven und die nicht-primitiven) via (k*a, k*b, k*c) zählen. Läuft in etwa 2 Sekunden.
<h2><a name="76"></a>Problem 76</h2>
How many different ways can one hundred be written as a sum of at least two positive integers?
<p><a href="076.rb">076.rb</a></p>Jeder der schonmal etwas Kombinatorik betrieben hat weiss, dass es hier um die sogenannte <a href="http://de.wikipedia.org/wiki/Partitionsfunktion">Partitionsfunktion</a> geht. Eine explizite Darstellung ist mir nicht
bekannt, aber man kann sie relativ leicht rekursiv beschreiben und mit einer Memo Tabelle geht das sogar halbwegs flott. Links: <a href="http://de.wikipedia.org/wiki/Partitionsfunktion">Wolfram MathWorld</a>,
<a href="http://www.research.att.com/~njas/sequences/A000041">Sloans</a>.
<h2><a name="77"></a>Problem 77</h2>
What is the first value which can be written as the sum of primes in over five thousand different ways?
<p><a href="077.rb">077.rb</a></p>Dynamic Programming ftw :-)
<h2><a name="78"></a>Problem 78</h2>
Let p(n) represent the number of different ways in which n coins can be separated into piles. For example, five coins can separated into piles in exactly seven different ways, so p(5)=7. (...) Find the least value of n for which p(n) is divisible by one million.
<p><a href="078.rb">078.rb</a></p>Offensichtlich ist p die <a href="https://en.wikipedia.org/wiki/Integer_partition">Partitionsfunktion</a>. Diese lässt sich mit Hilfe des <a href="https://en.wikipedia.org/wiki/Pentagonal_number_theorem">Pentagonalzahlsatzes</a> relativ effizient iterativ berechnen (jedenfalls deutlich effizienter als der rekursive Ansatz über p(k,n)), siehe auch den Abschnitt bei Wikipedia über die <a href="https://en.wikipedia.org/wiki/Integer_partition#Generating_function">erzeugende Funktion</a>. Meine Lösung ist leider trotzdem sehr langsam (ca. 40 Sekunden bei mir).
<h2><a name="79"></a>Problem 79</h2>
A common security method used for online banking is to ask the user for three random characters from a
passcode. The text file, <a href="http://projecteuler.net/project/keylog.txt">keylog.txt</a>,
contains fifty successful login attempts. Given that the three
characters are always asked for in order, analyse the file so as to determine the shortest possible
secret passcode of unknown length.
<p><a href="079.rb">079.rb</a></p>An dieser Aufgabe bin ich lange verzweifelt bis mein Kollege <a href="http://heipei.net/">Johannes</a>
die Aufgabe mit Stift und Papier in weniger als einer Minute gel&ouml;st hat. Das Prinzip ist nat&uuml;rlich
total simpel, man stellt die Daten als gerichteten Graphen dar und macht eine
<a href="http://de.wikipedia.org/wiki/Topologische_Sortierung">Topologische Sortierung</a>.
<h2><a name="80"></a>Problem 80</h2>
For the first one hundred natural numbers, find the total of the digital sums of the first one hundred decimal digits for all the irrational square roots.
<p><a href="080.rb">080.rb</a></p>Okay, das war etwas gecheatet, eigentlich wollte ich die Berechnung der Dezimalentwicklung selber machen (z.B. <a href="http://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Decimal_.28base_10.29">so wie hier</a>). Stattdessen habe ich es mit der <tt>BigDecimal</tt> Klasse von Ruby gemacht :-(
<h2><a name="81"></a>Problem 81</h2>
(...) the minimal path sum from the top left to the bottom right, by only moving to the right and down (...). Find the minimal path sum, in <a href="content/euler/81_matrix.txt">matrix.txt</a>  a 31K text file containing a 80 by 80 matrix, from the top left to the bottom right by only moving right and down.
<p><a href="081.rb">081.rb</a></p><a href="http://en.wikipedia.org/wiki/Dynamic_programming">Dynamic Programming</a>, piece of cake ;-)
<h2><a name="82"></a>Problem 82</h2>
The minimal path sum (...) by starting in any cell in the left column and finishing in any cell in the right column, and only moving up, down, and right (...). Find the minimal path sum, in <a href="content/euler/82_matrix.txt">matrix.txt</a> (...), containing a 80 by 80 matrix.
<p><a href="082.rb">082.rb</a></p>Etwas schwieriger als Problem 81, aber trotzdem relativ einfach. Die Matrix lässt sich als gewichteter Graph mit |V|=80<sup>2</sup> Knoten interpretieren und gesucht ist ein <a href="http://en.wikipedia.org/wiki/Shortest_path_problem">kürzester Pfad</a> von einem der Knoten in der ersten Spalte zu einem der Knoten in der letzten Spalte. Mein erster Gedanke war der <a href="http://en.wikipedia.org/wiki/Dijkstra%27s_algorithm">Dijkstra Algorithmus</a>. Ich war allerdings zu faul eine <a href="http://en.wikipedia.org/wiki/Priority_queue">vernünftige Datenstruktur</a> zur Speicherung der Knoten zu implementieren (und ein normales Array ist zu langsam). Wenn man sich den Graph genauer anguckt sieht man, dass er (fast) <a href="http://en.wikipedia.org/wiki/Directed_acyclic_graph">azyklisch</a> ist und in solchen Graphen kann man durch <a href="http://en.wikipedia.org/wiki/Topological_sorting">topologische Sortierung</a> das Kürzeste-Wege-Problem in Linearzeit lösen. Das habe ich dann im wesentlichen auch gemacht, indem ich die Knoten von "rechts nach links" durchgegangen bin. Einen deutlichen Speedup gab es dann noch durch die Beobachtung, dass es genügt sich nur die Kosten für die letzten zwei Spalten zu merken anstatt für alle Knoten. Der Algorithmus läuft in O(n<sup>3</sup>) = O(|V| * sqrt(|V|)) und braucht bei mir etwa 2 Sekunden. (Zum Vergleich: Mit Dijkstra brauchte ich etwa doppelt soviele Codezeilen, eine Laufzeit von O(n<sup>4</sup>) und etwa 120 Sekunden.)
<h2><a name="85"></a>Problem 85</h2>
By counting carefully it can be seen that a rectangular grid measuring 3 by 2 contains eighteen rectangles: (...) Although there exists no rectangular grid that contains exactly two million rectangles, find the area of the grid with the nearest solution.
<p><a href="085.rb">085.rb</a></p>Ganz nett. Der naive Ansatz ist eine vierfach verschachtelte Schleife, die im Rumpf einen Counter hochzählt. Wenn man das mal als (vierfach) Summe aufschreibt und eine Weile vereinfacht, sieht man sehr leicht, dass es genau h(h+1)w(w+1)/4 Rechtecke in einem Gitter von Breite w und Höhe h gibt. Breiter als w = 2000 muss man nicht testen, denn damit ist man mit Höhe h = 1 bereits zu groß (und ich habe erwartet, dass es "besser" als mit h=1 geht). Außerdem reicht es aus Symmetriegründen wenn man h&lt;w testet.
<h2><a name="87"></a>Problem 87</h2>
How many numbers below fifty million can be expressed as the sum of a prime square, prime cube, and prime fourth power?
<p><a href="087.rb">087.rb</a></p>Ziemlich einfach. Brute Force, mit der Beobachtung, dass nur Primzahlen bis &radic;(50*10<sup>6</sup> - 2<sup>3</sup> - 2<sup>4</sup>) betrachtet werden müssen.
<h2><a name="92"></a>Problem 92</h2>
How many numbers below 10.000.000 are <a href="http://de.wikipedia.org/wiki/Fr%C3%B6hliche_Zahl">not happy</a>?
<p><a href="092.rb">092.rb</a></p>Schöne Aufgabe eigentlich. Leider ist meine Lösung extrem langsam. Im wesentlichen Brute Force mit zwei
<a href="http://de.wikipedia.org/wiki/Memoization">Memo-Tables</a>. Winzige Optimierung: Die Tabelle muss
nur bis maximal 567 gehen, denn das ist die größtmögliche Zahl, die erreicht werden kann.
<h2><a name="95"></a>Problem 95</h2>
(...) Find the smallest member of the longest <a href="http://en.wikipedia.org/wiki/Aliquot_sequence">amicable chain</a> with no element exceeding one million.
<p><a href="095.rb">095.rb</a></p>Hier geht's um <a href="http://en.wikipedia.org/wiki/Sociable_number">Sociable Numbers</a>. Relativ straight-forward: Die erste Doppelschleife generiert die Teilersummen (ca. 1/3 der Laufzeit), der zweite Teil generiert alle Ketten.
<h2><a name="96"></a>Problem 96</h2>
The 6K text file, <a href="content/euler/96_sudoku.txt">sudoku.txt</a>, contains fifty different Su Doku puzzles ranging in difficulty, but all with unique solutions (...). By solving all fifty puzzles find the sum of the 3-digit numbers found in the top left corner of each solution grid.
<p><a href="096.rb">096.rb</a></p>Diese Aufgabe stand schon lange auf meiner TODO Liste, außerdem wollte ich sowieso schon immer mal einen Sudoku Solver schreiben. Eigentlich sehr straight-forward, hat mich trotzdem ca. 2 Stunden gekostet weil ich zu wenig Ahnung von Ruby's call-by-reference Prinzip habe, grml. Für einige der Puzzle ist ein "guess-and-check" <a href="http://de.wikipedia.org/wiki/Backtracking">Backtracking</a> notwendig. Einen kleinen Speedup kriegt man durch die Heuristik als erstes dort zu "raten" wo wenig Wahlmöglichkeiten bestehen. Die 50 Sudokus werden in etwa 10 Sekunden gelöst bei mir.
<h2><a name="97"></a>Problem 97</h2>
In 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 28433 * 2<sup>7830457</sup>+1. Find the last ten digits of this prime number.
<p><a href="097.rb">097.rb</a></p>Schöne Aufgabe! Idee: Große Schritte machen und in jedem schon nur mit den letzten 10 Stellen rechnen.
<h2><a name="98"></a>Problem 98</h2>
By replacing each of the letters in the word CARE with 1, 2, 9, and 6 respectively, we form a square number: 1296 = 36<sup>2</sup>. What is remarkable is that, by using the same digital substitutions, the anagram, RACE, also forms a square number: 9216 = 96<sup>2</sup>. We shall call CARE (and RACE) a square anagram word pair and specify further that leading zeroes are not permitted, neither may a different letter have the same digital value as another letter. Using <a href="content/euler/98_words.txt">words.txt</a>, a 16K text file containing nearly two-thousand common English words, find all the square anagram word pairs (a palindromic word is NOT considered to be an anagram of itself). What is the largest square number formed by any member of such a pair?
<p><a href="098.rb">098.rb</a></p>Hier gibt es ein paar Kleinigkeiten, die man leicht übersieht. Erst einmal fällt auf, dass wir nur Wörter betrachten müssen, für die in der Liste überhaupt ein Anagramm existiert. Alle anderen können wir ignorieren. Meine erste Idee war: Für jedes Wortpaar über alle Substitutionen iterieren und testen ob beide Wörter unter der gleichen Substitution jeweils auf ein Quadrat abgebildet werden. Das funktioniert, aber ist sehr langsam (ca. 5 Minuten). Effizienter ist es, alle Quadrate zu generieren (als obere Grenze kann man 10<sup>n</sup> nehmen wobei n die Länge des längsten Wortes aus der Liste ist, für das ein Anagramm existiert (n=9)). Auch hier löscht man alle Quadrate, für die kein Anagramm existiert. Als nächstes testet man für jedes Quadrat und jedes Wort (mit gleicher Länge), ob die dadurch induzierte Abbildung das zweite Wort auf ein Anagramm des ersten Quadrates abbildet. Es dürfen nur (Quadrat,Wort)-Paare betrachtet werden, die injektive Abbildungen induzieren. Kompliziert beschrieben, aber die Idee ist eigentlich einfach :-) Läuft bei mir in unter 5 Sekunden.
<h2><a name="99"></a>Problem 99</h2>
Using <a href="content/euler/99_base_exp.txt">base_exp.txt</a>, a 22K text file containing one thousand lines
with a base/exponent pair on each line, determine which line number has the greatest numerical value.
<p><a href="099.rb">099.rb</a></p>Sehr einfach. Vergleiche die <a href="http://de.wikipedia.org/wiki/Logarithmus">Logarithmen</a> statt
den Werten...
<h2><a name="100"></a>Problem 100</h2>
If a box contains twenty-one coloured discs, composed of fifteen blue discs and six red discs, and two discs were taken at random, it can be seen that the probability of taking two blue discs, P(BB) = (15/21)(14/20) = 1/2. (...) By finding the first arrangement to contain over 10<sup>12</sup> = 1,000,000,000,000 discs in total, determine the number of blue discs that the box would contain.
<p><a href="100.rb">100.rb</a></p>Sehr interessante Aufgabe. Es ist P(BB) = (a/b)*((a-1)/(b-1)) = (a/(a+l))*((a-1)/(a+l-1)) wobei a die Anzahl der blauen und b=a+l die Anzahl der roten Discs ist. Die Wahrscheinlichkeit soll genau 1/2 sein. Mit etwas umformen erhält man 2a(a-1) = (a+l)(a+l-1). Noch etwas mehr umformen und PQ-Formel ergibt, dass 1+8l<sup>2</sup> ein Quadrat sein muss, d.h. es gibt ein y mit y<sup>2</sup> = 1 + 8l<sup>2</sup>, oder anders: y<sup>2</sup>-8l<sup>2</sup> = 1. Dies ist eine <a href="https://en.wikipedia.org/wiki/Pell%27s_equation">Pellsche Gleichung</a>, welche man über die <a href="https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Example.2C_square_root_of_114_as_a_continued_fraction">Kettenbruchentwicklung von sqrt(8)</a> lösen kann. Die Lösungen (a,b) nennt man übrigens <a href="http://oeis.org/A011900">Diophantische Paare</a>.
<h2><a name="102"></a>Problem 102</h2>
Using <a href="102_triangles.txt">triangles.txt</a>, a 27K text file containing the co-ordinates of one thousand "random" triangles, find the number of triangles for which the interior contains the origin.
<p><a href="102.rb">102.rb</a></p>Piece of cake. Bisschen analytische Geometrie aus der Oberstufe :-) Man kann das Dreieck durch ein Gleichungssystem beschreiben: <b>x</b> = <b>u</b> + a<b>v</b> + b<b>w</b>. Man setzt x=(0,0) und löst nach a und b. Wenn a,b&gt;0 und a+b&lt;1 gilt, dann ist der Punkt im Dreieck.
<h2><a name="104"></a>Problem 104</h2>
Given that F<sub>k</sub> is the first Fibonacci number for which the first nine digits AND the last nine
digits are 1-9 pandigital (contain all the digits 1 to 9, but not necessarily in order), find k.
<p><a href="104.rb">104.rb</a></p>Eine recht schwere Aufgabe. Das gesuchte <i>k</i> ist relativ gross und die zugehörige <i>k</i>-te
Fibonacci Zahl hat mehrere tausend Stellen. Idee: Erzeuge nicht die Fibonacci Folge sondern
die Folge der letzten und vorderen 9 Ziffern jedes Folgengliedes.
<h2><a name="108"></a>Problem 108</h2>
In the following equation <i>x</i>, <i>y</i>, and <i>n</i> are positive integers: 1/x + 1/y = 1/n. What is the least value of <i>n</i> for which the number of distinct solutions exceeds one-thousand?
<p><a href="108.rb">108.rb</a></p>Einfachere Version von 110, siehe unten. Gleicher Code.
<h2><a name="110"></a>Problem 110</h2>
In the following equation <i>x</i>, <i>y</i>, and <i>n</i> are positive integers: 1/x + 1/y = 1/n. What is the least value of <i>n</i> for which the number of distinct solutions exceeds four million?
<p><a href="110.rb">110.rb</a></p>Eine der Aufgaben, die mir am besten gefallen hat, auch wenn ich erst einige Stunden an einem dämlichen Bruteforce Algorithmus mit minimalen Optimierungen vergeudet habe, bevor ich angefangen habe nachzudenken. Es handelt sich hier um eine <a href="http://en.wikipedia.org/wiki/Diophantine_equation">diophantische Gleichung</a> und durch ein paar elementare Umformungen sieht man, dass nx+ny=xy gelten muss, was äquivalent zu n<sup>2</sup>=(x-n)(y-n)=:XY ist. Die tatsächlichen Werte der Lösungen sind unwichtig, es geht nur um die Anzahl. d(n<sup>2</sup>) bezeichnet die <a href="http://de.wikipedia.org/wiki/Teileranzahlfunktion">Anzahl der positiven Teiler</a> von n<sup>2</sup>. Da für jedes (x,y) auch (y,x) eine Lösung ist, werden hier alle Lösungen (außer x=y, d.h. (x,y)=(2n,2n)) doppelt gezählt. Tatsächlich interessiert uns also (d(n<sup>2</sup>)+1)/2. Für n<sup>2</sup> = p<sub>1</sub><sup>2e<sub>1</sub></sup> * ... * p<sub>k</sub><sup>2e<sub>k</sub></sup> ist d(n<sup>2</sup>) = (2e<sub>1</sub>+1) * ... * (2e<sub>k</sub>+1). Gesucht ist also das kleinste Quadrat, dessen Teileranzahl größer als 4*10<sup>6</sup> ist. Die Lösung hat sehr ähnliche Eigenschaften wie sogenannte <a href="http://de.wikipedia.org/wiki/Hochzusammengesetzte_Zahl">hochzusammengesetzte Zahlen</a>, d.h. dass e<sub>1</sub> >= ... >= e<sub>k</sub> gilt und die k Primzahlen genau die ersten k Primzahlen sind (wäre es anders, so könnte man umordnen bzw. Faktoren austauschen um eine kleinere Lösung mit der gleichen Teileranzahl zu bekommen; Man beachte, dass die Primzahlen selbst in d(n<sup>2</sup>) nicht vorkommen, nur die Exponenten). Da das Produkt der ersten 14 Primzahlen bereits mehr als 4*10<sup>6</sup> Teiler hat, ist k höchstens 14. Als Heuristik habe ich daher 13, 12, 11, ... ausprobiert, d.h. nur Lösungskandidaten betrachtet, die Vielfache der ersten 13, 12, 11, ... Primzahlen sind (und diese Idee bringt auch den größten Speed-up, da der Lösungsraum extrem eingeschränkt wird). Mit einer vereinfachten Probedivision (nur die ersten 14 Primzahlen testen) habe ich dann die Exponenten e<sub>1</sub>, ..., e<sub>k</sub> bestimmt um die Teileranzahlen zu bestimmen. Das Programm läuft in weniger als einer halben Sekunde.
<h2><a name="112"></a>Problem 112</h2>
(...) We shall call a positive integer that is neither increasing nor decreasing a "bouncy" number. (...) Find the least number for which the proportion of bouncy numbers (below) is exactly 99%.
<p><a href="112.rb">112.rb</a></p>Langweilige Aufgabe, langweilige (und langsame) Lösung. Läuft in etwas unter 10 Sekunden.
<h2><a name="119"></a>Problem 119</h2>
The number 512 is interesting because it is equal to the sum of its digits raised to some power:
5&nbsp;+&nbsp;1&nbsp;+&nbsp;2&nbsp;=&nbsp;8, and 8<sup>3</sup>&nbsp;=&nbsp;512. Another example
of a number with this property is 614656&nbsp;=&nbsp;28<sup>4</sup>. We shall define
<a href="http://www.research.att.com/~njas/sequences/A023106">a<sub>n</sub></a>
to be the n-th term of this sequence and insist that a number must contain at
least two digits to have a sum. You are given that a<sub>2</sub>&nbsp;=&nbsp;512 and
a<sub>10</sub>&nbsp;=&nbsp;614656. Find a<sub>30</sub>.
<p><a href="119.rb">119.rb</a></p>Erste Idee: Zahlen der Reihe nach durchlaufen und dann die passende Potenz dazu finden (viel zu langsam).
Zweite Idee: Testen ob der Logarithmus zur Quersumme als Basis ganzzahlig ist (viel zu langsam).
Dritte (gute) Idee: Alle Potenzen generieren und dann die rausfischen, die die gewünschte Eigenschaft
haben (sehr schnell :-)).
<h2><a name="120"></a>Problem 120</h2>
Let <i>r</i> be the remainder when (a-1)<sup>n</sup> + (a+1)<sup>n</sup> is divided by a<sup>2</sup>.
(...) as <i>n</i> varies, so too will <i>r</i>, but for a = 7 it turns out that <i>r</i><sub>max</sub> = 42.
For 3 &lt;= a &lt;= 1000, find the sum of all the <i>r</i><sub>max</sub>.
<p><a href="120.rb">120.rb</a></p>Recht einfach, wenn man <a href="#123">Aufgabe 123</a> vorher schon gemacht hat.
<h2><a name="123"></a>Problem 123</h2>
Let p<sub>n</sub> be the <i>n</i>-th prime (...) and let <i>r</i> be the remainder when
(p<sub>n</sub>-1)<sup>n</sup> + (p<sub>n</sub>+1)<sup>n</sup> is divided by p<sub>n</sub><sup>2</sup>.
Find the least value of <i>n</i> for which the remainder first exceeds 10<sup>10</sup>.
<p><a href="123.rb">123.rb</a></p>Nette Aufgabe. Mit dem <a href="http://de.wikipedia.org/wiki/Binomischer_Lehrsatz">Binomischen
Lehrsatz</a> lassen sich die beiden Potenzen ausschreiben, anschließend kann man zusammenfassen und man
sieht, dass modulo p<sub>n</sub><sup>2</sup> fast alle Summanden gleich Null sind und sich der ganze
Term zu 2 * n * p<sub>n</sub> vereinfacht, falls <i>n</i> ungerade ist, und zu 2, falls <i>n</i> gerade ist.
<h2><a name="124"></a>Problem 124</h2>
The <a href="http://en.wikipedia.org/wiki/Radical_of_an_integer">radical</a> of n, rad(n), is the product of distinct prime factors of n. If we calculate rad(n) (...), then sort them on rad(n), and sorting on n if the radical values are equal (...). Let E(k) be the kth element in the sorted n column (...). If rad(n) is sorted for 1 &lt;= n &lt;= 100000, find E(10000).
<p><a href="124.rb">124.rb</a></p>Im Grunde ein einfaches <a href="http://de.wikipedia.org/wiki/Primzahlsieb">Primzahlsieb</a>, dass sich bereits während des Aufbaus die Primfaktoren merkt. Läuft in etwa 3 Sekunden.
<h2><a name="125"></a>Problem 125</h2>
Find the sum of all the numbers less than 10<sup>8</sup> that are both palindromic and can be
written as the sum of consecutive squares.
<p><a href="125.rb">125.rb</a></p>Aus der bekannten <a href="http://de.wikipedia.org/wiki/Formelsammlung_Algebra#Summenformeln">
Formel</a> für die Summe der ersten <i>n</i> Quadrate, kann man leicht eine Formel ableiten für
die Summe der Quadrate von <i>k</i> bis <i>n</i>. Vorsicht: Die Darstellung einer Zahl als
Summe aufeinanderfolgender Quadrate ist <b>nicht eindeutig</b> (d.h. man muss aufpassen,
dass man keine Zahl doppelt zählt).
<h2><a name="127"></a>Problem 127</h2>
The radical of n, <a href="http://en.wikipedia.org/wiki/Radical_of_an_integer">rad</a>(n), is the product of distinct prime factors of n. We shall define the triplet of positive integers (a,b,c) to be an abc-hit if: GCD(a, b) = GCD(a, c) = GCD(b, c) = 1, a &lt; b, a + b = c, rad(abc) &lt; c. Find &sum; c for c &lt; 120000.
<p><a href="127.rb">127.rb</a></p>Dies ist eine deutlich schwierigere Variante von Problem 124 (und offensichtlich motiviert durch die berühmte <a href="http://en.wikipedia.org/wiki/Abc_conjecture">abc-Vermutung</a> aus der elementaren Zahlentheorie), mit einer Menge Optimierungen. Zunächst einmal gilt rad(abc)=rad(a)rad(b)rad(c) wenn a,b,c paarweise teilerfremd sind (es genügt also bis c<sub>max</sub>=120000 zu sieben). Die aller wichtigste Idee ist, dass man die a-Werte in der Reihenfolge ihrer Radikale durchläuft (also quasi die sortierte Liste aus Problem 124 benutzt) und abbricht sobald rad(a)rad(c) &gt;= c auftritt (denn dies gilt dann für alle weiteren a-Werte ebenfalls). Weiterhin muss a&lt;c/2 gelten (wegen a&lt;b=c-a). Teilerfremdheit kann man leicht testen, da wir ja sowieso alle Zahlen im Sieb von Problem 124 bereits faktorisiert haben. Für quadratfreie (und insbesondere prime) Werte c gilt schon rad(c)=c, also können diese komplett ignoriert werden. Außerdem kann man noch nutzen, dass rad(a)rad(c) &lt; c/2 gelten muss (statt nur &lt; c), denn rad(a) und rad(b) können nicht beide kleiner als 2 sein. Insgesamt läuft das Programm in etwa 20 Sekunden.
<h2><a name="131"></a>Problem 131</h2>
There are some prime values, <i>p</i>, for which there exists a positive integer, <i>n</i>,
such that the expression n<sup>3</sup> + p * n<sup>2</sup> is a perfect cube.
How many primes below one million have this remarkable property?
<p><a href="131.rb">131.rb</a></p>Sehr schöne Aufgabe. Der Brute-Force Ansatz lässt sich zwar etwas optimieren, aber dauert trotzdem noch mehrere
Minuten. Schöner: n<sup>2</sup> * (n + p) ist aufjedenfall eine Kubikzahl, wenn sowohl n als auch n+p welche sind
(etwa n = m<sup>3</sup>).
Wenn dies der Fall ist, ist p die Differenz zweier Kubikzahlen (p = (n+p) - n). Die Differenz zweier Kubikzahlen
faktorisiert aber zu a<sup>3</sup> - b<sup>3</sup> = (a-b)(a<sup>2</sup> + ab + b<sup>2</sup>), d.h. es muss
a=b+1 gelten (also p = (m+1)<sup>3</sup> - m<sup>3</sup>). Die Primzahl p ist also die Differenz zweier
aufeinander folgender Kubikzahlen (solche Primzahlen nennt man übrigens
<a href="http://mathworld.wolfram.com/CubanPrime.html">Cuban Primes</a>).
<h2><a name="132"></a>Problem 132</h2>
A number consisting entirely of ones is called a <a href="https://en.wikipedia.org/wiki/Repunit">repunit</a>. We shall define R(k) to be a repunit of length k. (...) Find the sum of the first forty prime factors of R(10<sup>9</sup>).
<p><a href="132.rb">132.rb</a></p>Es gilt R(k) = (10<sup>k</sup> - 1)/9, d.h. p teilt R(k) gdw. (10<sup>k</sup>-1)/9 = 0 mod p. Weil p prim ist, ist das äquivalent zu 10<sup>k</sup> = 1 mod p. Für k = 10<sup>9</sup> testen wir einfach die Primzahlen bis wir 40 Stück gefunden haben (2, 3, und 5 nicht mit testen. 2 und 5 sind ausgeschlossen, weil R(k) nicht mit 0 endet und 3 ist ausgeschlossen, weil 10<sup>9</sup> nicht durch 3 teilbar ist).
<h2><a name="133"></a>Problem 133</h2>
A number consisting entirely of ones is called a <a href="https://en.wikipedia.org/wiki/Repunit">repunit</a>. We shall define R(k) to be a repunit of length k. (...) Find the sum of all the primes below one-hundred thousand that will never be a factor of R(10<sup>n</sup>).
<p><a href="133.rb">133.rb</a></p>Sehr ähnlich zur vorherigen Aufgabe. Entscheidend ist die Beobachtung, dass R(b) nur durch R(a) teilbar sein kann, wenn b durch a teilbar ist. Weil 10<sup>n</sup> immer durch 10<sup>m</sup> teilbar ist falls m&lt;n, genügt es, wenn wir einfach für irgendein großes n (z.B. 50) die Teilbarkeit wie in Problem 132 testen.
<h2><a name="135"></a>Problem 135</h2>
Given the positive integers, x, y, and z, are consecutive terms of an arithmetic progression, the least value of the positive integer, n, for which the equation, x<sup>2</sup> - y<sup>2</sup> - z<sup>2</sup> = n, has exactly two solutions is n = 27. (...) How many values of n less than one million have exactly ten distinct solutions?
<p><a href="135.rb">135.rb</a></p>x,y,z sind positiv und aufeinanderfolgende Glieder einer <a href="http://de.wikipedia.org/wiki/Arithmetische_Folge">arithmetischen Folge</a>, d.h. x=z+2a, y=z+a. Da x &gt; y &gt; z &gt; 0 ist auch a &gt; 0. (z+2a)<sup>2</sup> - (z+a)<sup>2</sup> - z<sup>2</sup> = n lässt sich schreiben als n = (3a-z)(a+z). Man kann nun einfach im Brute-Force-Stil über a,z iterieren und alle n generieren und anschliessend zählen wieviele n genau 10 mal vorkommen. Als kleine Optimierung: Da n positiv ist und 3a-z &lt;= n gilt, muss z &lt;= 3a &lt;= n+z &lt;= 2n gelten. Code läuft in unter 10 Sekunden.
<h2><a name="136"></a>Problem 136</h2>
The positive integers, x, y, and z, are consecutive terms of an arithmetic progression. Given that n is a positive integer, the equation, x<sup>2</sup> - y<sup>2</sup> - z<sup>2</sup> = n, has exactly one solution when n = 20. (...) How many values of n less than fifty million have exactly one solution?
<p><a href="136.rb">136.rb</a></p>Dies ist ehrlich gesagt nicht meine Lösung. Ich habe zuerst meine Lösung für Problem 135 modifiziert, welche ca. 10 Minuten für Problem 136 benötigte. Im Forum zu diesem Problem habe ich dann einen sehr kleveren Ansatz gefunden. Man schreibt x = y+a und z=y-a und ähnlich wie bei Problem 135 erhält man n=y(4a-y), d.h. n=yk mit y+k = 0 (mod 4). Der entscheidene Unterschied zu Problem 135 ist, dass wir an n interessiert sind, für die eine <b>eindeutige</b> Lösung existiert. Man kann zeigen, dass dies genau dann der Fall ist, wenn n = 4, 16, 4p, 16p, q gilt, wobei p>2 prim und q prim mit q=3 (mod 4) ist. Der Beweis dazu findet sich ebenfalls im Forum. Der Code läuft bei mir in etwa einer Minute.
<h2><a name="142"></a>Problem 142</h2>
Find the smallest x + y + z with integers x > y > z > 0 such that x+y, x-y, x+z, x-z, y+z, y-z are all perfect squares.
<p><a href="142.rb">142.rb</a></p>Idee: Nicht x,y,z suchen und testen ob die Werte Quadrate sind sondern die Quadrate direkt generieren. Man schreibt a=x+y, b=x-y, c=x+z, d=x-z, e=y+z, f=y-z. Dann gilt f=a-c, e=a-d und b=c-e, d.h. wir müssen nur die Quadrate a, c und d generieren. Ob f, e und b dann auch Quadrate sind testen wir. Anschließend kann man x=(a+b)/2, y=(e+f)/2 und z=(c-d)/2 nutzen um die Summe zu berechnen. Noch eine Optimierung: Damit x,y,z ganze Zahlen sind, kann man die Loops in Zweierschritten laufen lassen und zwar so, dass a+b=c+d gerade ist (d.h. c und d beide gerade oder beide ungerade).
<h2><a name="169"></a>Problem 169</h2>
Define f(0)=1 and f(n) to be the number of different ways n can be expressed as a sum of integer powers of 2 using each power no more than twice.
<p><a href="169.rb">169.rb</a></p>Interessante Aufgabe. Ich hatte sie schon länger im Hinterkopf, aber habe nie wirklich drüber nachgedacht. Irgendwann bin ich durch Zufall auf den <a href="https://en.wikipedia.org/wiki/Calkin%E2%80%93Wilf_tree">Calkin-Wilf Tree</a> gestoßen: Ein Baum, der genau die rationalen Zahlen als Knoten enthält. Eine Breitensuche durch diesen Baum enumeriert (ohne Wiederholung!) alle rationalen Zahlen. Betrachtet man die Folge der Nenner, so erhält man erstaunlicherweise genau die Funktion f aus der Aufgabe. Die sehr einfache Rekursionsformel wird bei Wikipedia erwähnt.
<h2><a name="179"></a>Problem 179</h2>
Find the number of integers 1 &lt; n &lt; 10<sup>7</sup>, for which n and n+1 have the same <a href="https://en.wikipedia.org/wiki/Divisor_function">number of positive divisors</a>.
<p><a href="179.rb">179.rb</a></p>Der naive Ansatz ist eine Abwandlung eines Primzahlsiebs: <tt>for(skip=1; skip&lt;n; skip++) for(j=0; j&lt;n; j+=skip) div[j]++;</tt>. Das läuft bei mir (in Ruby) in etwa 4 Minuten (ich denke es ist in erster Linie so langsam weil das Speicherzugriffsmuster dieses Algorithmus sehr sehr schlecht ist und daher nie lange Zeit Daten im Cache bleiben). Meine Lösung nutzt etwas mehr Zahlentheorie, nämlich dass <a href="https://en.wikipedia.org/wiki/Divisor_function">d(n)</a> = (e<sub>1</sub>+1) * ... * (e<sub>k</sub>+1) ist wobei e<sub>i</sub> die Exponenten aus der Primfaktorzerlegung sind. Daraus folgt dann, dass d(n) = d(n/p<sup>e</sup>) * (e+1) ist wenn n durch die Primzahl p teilbar ist. Im Primzahlsieb merkt man sich für jede zusammengesetzte Zahl die kleinste Primzahl, die diese teilt. Der Code läuft bei mir in etwa 40 Sekunden. Schneller habe ich es leider nicht hingekriegt :-(
<h2><a name="182"></a>Problem 182</h2>
The RSA encryption is based on the following procedure: (...) Choose p=1009 and q=3643. Find the sum of all values of e, 1 &lt; e &lt; phi(1009,3643) and gcd(e,phi)=1, so that the number of unconcealed messages for this value of e is at a minimum.
<p><a href="182.rb">182.rb</a></p>Sehr schöne Aufgabe. Wer den chinesischen Restsatz und die Isomorphie zwischen Z<sub>n</sub> und Z<sub>p</sub>xZ<sub>q</sub> kennt, dem ist klar, dass jede RSA Funktion stets nicht-triviale Fixpunkte hat. Tatsächlich kann es passieren, dass eine RSA Funktion keine einzige Nachricht verschlüsselt, d.h. <b>jeder</b> Punkt ist ein Fixpunkt. Die Anzahl der Fixpunkte ist (1+gcd(e-1,p-1))*(1+gcd(e-1,q-1)). Da p,q prim sind, sind p-1 und q-1 stets gerade, d.h. jede RSA Funktion hat mindestens (1+2)*(1+2)=9 Fixpunkte. Wir suchen also die Summe der Werte von e für die genau 9 Fixpunkte existieren. Relativ klar zu implementieren, wenn man diesen Zusammenhang kennt. Eine kleine Optimierung (die auf der Wahl von p und q basiert, d.h. für andere Werte wäre diese Optimierung nicht möglich): p-1 ist durch 4 teilbar, q-1 durch 2, aber nicht durch 4. Daraus folgt, dass e-1 ebenfalls durch 2, aber nicht durch 4 teilbar sein darf, d.h. e mod 4 = 3. Analog ist q-1 durch 3 teilbar, also darf e-1 nicht auch durch 3 teilbar sein (sonst wäre der ggT größer als 2). e darf mit dem gleichen Argument nicht durch 3 teilbar sein (sonst wäre der ggT zu phi größer als 1), also muss e mod 3 = 2 sein. Insgesamt (mit chinesischem Restsatz, da 3 und 4 teilerfremd sind) erhält man e mod 12 = 11, d.h. wir können die Schleife bei 11 beginnen und in 12er Schritten durchlaufen. Laufzeit ist auf meinem Rechner etwa 5 Sekunden. Würde man noch weitere Faktoren von p-1 und q-1 mit einbeziehen (7 und 607), könnte man dies noch drastisch reduzieren.
<h2><a name="183"></a>Problem 183</h2>
Let N be a positive integer and let N be split into k equal parts, r = N/k, so that N = r + r + ... + r. Let P be the product of these parts, P = r × r × ... × r = r<sup>k</sup>. (...) Let M(N) = P<sub>max</sub> for a given value of N. (...) Let D(N) = N if M(N) is a non-terminating decimal and D(N) = -N if M(N) is a terminating decimal. (...) Find &sum; D(N) for 5 &lt;= N &lt;= 10000.
<p><a href="183.rb">183.rb</a></p>Deutlich einfacher als ich auf den ersten Blick angenommen habe :-) Durch ableiten sieht man, dass für reelle Argumente das Maximum bei k=N/<a href="http://de.wikipedia.org/wiki/Eulersche_Zahl">e</a> angenommen wird. Meine Vermutung war also, dass ceil(N/e) oder floor(N/e) das Maximum für ganzzahlige k sein wird. Also immer beide ausprobieren und das größere nehmen. Als Optimierung: k*log(n/k) und (n/k)<sup>k</sup> haben die gleichen Maxima (aber ersteres ist schneller zu berechnen). Um D(N) zu bestimmen reicht es den (vollständig gekürzten!) Nenner von (n/k)<sup>k</sup> zu betrachten. Enthält dieser andere Primfaktoren als 2 und 5 so ist die Dezimalentwicklung unendlich. Da dieser Nenner im wesentlichen k<sup>k</sup> ist (bis auf gemeinsame Faktoren mit n) und k<sup>k</sup> die gleichen Primfaktoren wie k hat, reicht es also k zu betrachten. Das Programm läuft in weniger als 10ms. (Kleine Stolperfalle: e muss hinreichend gut approximiert sein!)
<h2><a name="185"></a>Problem 185</h2>
The game Number Mind is a variant of the well known game Master Mind. Instead of coloured pegs, you have to guess a secret sequence of digits. After each guess you're only told in how many places you've guessed the correct digit. So, if the sequence was 1234 and you guessed 2036, you'd be told that you have one correct digit; however, you would NOT be told that you also have another digit in the wrong place. Based on the following guesses, (...), find the unique 16-digit secret sequence.
<p><a href="185.rb">185.rb</a></p>Habe etwas gemogelt. Das Problem lässt sich sehr einfach als (binäres) <a href="http://en.wikipedia.org/wiki/Linear_programming">ILP</a> modellieren (Variable x<sub>ij</sub> = 1 gdw. an Stelle i steht Ziffer j. Natürliche Constraints (pro Stelle genau eine Ziffer, etc.) kodieren und Guesses darstellen, alles relativ straight-forward). Ich habe das Problem dann mit dem GNU <tt>lp_solve</tt> Tool gelöst.
<h2><a name="187"></a>Problem 187</h2>
How many composite integers, n &lt; 10<sup>8</sup>, have <a href="https://en.wikipedia.org/wiki/Semiprime">precisely two</a>, not necessarily distinct, prime factors?
<p><a href="187.rb">187.rb</a></p>Brute-Force Lösung. Der eigentliche Algorithmus ist recht schnell, aber mein Primzahlsieb ist leider viel zu langsam. Dauert knapp eine Minute. Zum Zählalgorithmus: Entscheidend ist die Beobachtung, dass für jede Semiprimzahl n=pq mit p &lt;= q stets p &lt;= sqrt(n) ist.
<h2><a name="188"></a>Problem 188</h2>
Find the last 8 digits of 1777 &uarr; &uarr; 1855.
<p><a href="188.rb">188.rb</a></p>Es geht hier um sogenannte <a href="http://de.wikipedia.org/wiki/Potenzturm">Potenzt&uuml;rme</a>, oder auch <a href="http://en.wikipedia.org/wiki/Tetration">Tetration</a> genannt. Da ich <a href="/hv_euler#282">Problem 282</a> zuerst gelöst hatte, war diese Aufgabe in wenigen Minuten gel&ouml;st. Die Idee ist, dass sich die Potenztürme, ganz analog zu normalen Potenzen, nach dem <a href="http://de.wikipedia.org/wiki/Satz_von_Euler">Satz von Euler</a> im Exponenten modulo phi(10<sup>8</sup>) reduzieren lassen (1777 ist prim und damit teilerfremd zu 10<sup>8</sup>). Au&szlig;erdem kann man zeigen, dass <a href="www.math.osu.edu/~shapiro.6/IE.pdf">Potenzturmfolgen modulo n stets konstant werden</a>. Es reicht also so weit zu berechnen bis sich ein Wert wiederholt (was relativ schnell passiert).
<h2><a name="197"></a>Problem 197</h2>
Given is the function f(x) = [2<sup>30.403243784 - x<sup>2</sup></sup>] * 10<sup>-9</sup>,
the sequence u<sub>n</sub> is defined by u<sub>0</sub> = -1 and u<sub>n+1</sub> = f(u<sub>n</sub>).
Find u<sub>n</sub> + u<sub>n+1</sub> for n = 10<sup>12</sup>. Give your answer with 9 digits after the decimal point.
<p><a href="197.rb">197.rb</a></p>Sehr langweilige Aufgabe.. Wie viele andere vermutlich auch hatte ich eine Art von fraktalem und "chaotischem"
Verhalten erwartet. Man sieht aber (durch ausprobieren) leicht, dass die Folge recht schnell (ab ca. 500 Iterationen)
um zwei Werte oszilliert (und die Summe von aufeinanderfolgenden Folgengliedern damit konvergiert (und die ersten
9 Stellen sich nichtmehr ändern)).
<h2><a name="203"></a>Problem 203</h2>
Find the sum of the distinct squarefree numbers in the first 51 rows of Pascal's triangle.
<p><a href="203.rb">203.rb</a></p>Viel zu einfach f&uuml;r ein Level 5 Problem.
<h2><a name="204"></a>Problem 204</h2>
(...) We will call a positive number a generalised Hamming number of type n, if it has no prime factor larger than n. (...) How many generalised Hamming numbers of type 100 are there which don't exceed 10<sup>9</sup>?
<p><a href="204.rb">204.rb</a></p>Man soll hier die Anzahl der Zahlen m &lt;= 10<sup>9</sup>, die 100-<a href="http://de.wikipedia.org/wiki/Glatte_Zahl">glatt</a> sind, bestimmen. Im Grunde macht man eine Art Tiefensuche durch den Baum der Multiplikationsfunktion mit Primzahlen p &lt; 100. Zwei kleine Optimierungen: Man kann mit den Logarithmen rechnen statt mit den Primzahlen selbst, dann tauscht man die Multiplikationen großer Zahlen durch die Addition von Floats. Weiterhin braucht man keine Primzahlen q &gt; p testen falls das Produkt mit p bereits zu groß war (d.h. man kann viele Äste in dem Baum "abschneiden"). Laufzeit bei mir etwa 10 Sekunden.
<h2><a name="205"></a>Problem 205</h2>
Peter has nine four-sided (pyramidal) dice, each with faces numbered 1, 2, 3, 4. Colin has six six-sided (cubic) dice, each with faces numbered 1, 2, 3, 4, 5, 6. Peter and Colin roll their dice and compare totals: the highest total wins. The result is a draw if the totals are equal. What is the probability that Pyramidal Pete beats Cubic Colin? Give your answer rounded to seven decimal places in the form 0.abcdefg
<p><a href="205.rb">205.rb</a></p>Hässliche Lösung, aber ziemlich straight-forward. Einfach alle 4<sup>9</sup> Möglichkeiten für Peter und alle 6<sup>6</sup> Möglichkeiten für Colin aufzählen und merken wie oft welche Summe (maximal 36) auftrat.
<h2><a name="206"></a>Problem 206</h2>
Find the unique positive integer whose square has the form
1_2_3_4_5_6_7_8_9_0, where each "_" is a single digit.
<p><a href="206.rb">206.rb</a></p>Schöne Aufgabe, einfache Lösung. Die Zahl endet mit 0, ist also durch
10 teilbar. Da es sich um ein Quadrat handelt (und 10 quadratfrei ist)
muss auch die Wurzel durch 10 teilbar sein, also die Zahl selbst sogar
durch 100, d.h. auch die vorletzte Ziffer muss eine 0 sein, die
letzten zwei Ziffern können also ignoriert werden, damit ist die
letzte relevante Ziffer eine 9. Eine Zahl, deren Quadrat als letzte
Ziffer eine 9 hat, muss als letzte Ziffer eine 3 oder eine 7 haben
(sieht man an der Rechnung modulo 10), in jedem Fall ist unsere
gesuchte Wurzel also ungerade. Die größtmögliche Wurzel ist also
138902663. Von hier aus testen wir abwärts in Zweierschritten, ob
wir eine Lösung gefunden haben (und multiplizieren diese
anschlie&szlig;end mit 10).
<h2><a name="216"></a>Problem 216</h2>
Consider numbers t(n) of the form t(n) = 2n<sup>2</sup>-1 with n &gt; 1. (...) How many numbers t(n) are prime for n &lt;= 50,000,000?
<p><a href="216.rb">216.rb</a></p>Eine sehr anspruchsvolle Aufgabe. Meine Lösung benötigt etwa 15 Minuten (das Primzahlsieb alleine dauert bereits über eine Minute) und ich bekomme sie leider nicht schneller. Ich schiebe das aber mal auf Ruby, denn in C läuft der gleiche Algorithmus in unter 10 Sekunden. Offensichtlich kann man nicht für jede der 50 Millionen Zahlen einen Primzahltest machen. Auch ein Primzahlsieb bis 2*(5*10<sup>7</sup>)<sup>2</sup>-1 =~ 5*10<sup>15</sup> ist natürlich nicht drin. Die Idee ist: Falls t(n) zusammengesetzt ist, d.h. falls ein p existiert so dass 2n<sup>2</sup>-1 durch p teilbar ist, so ist 2n<sup>2</sup>-1=0 mod p. Das kann man umformen zu n<sup>2</sup> = (p+1)/2 mod p. Damit t(n) zusammengesetzt ist, muss (p+1)/2 also ein <a href="http://de.wikipedia.org/wiki/Quadratischer_Rest">quadratischer Rest</a> modulo p sein mit diskreter Wurzel n. Die Idee ist nun, einfach für alle Werte von p &lt; sqrt(2n<sup>2</sup>-1) jeweils die beiden Wurzeln zu berechnen. Dies geht mit dem <a href="http://en.wikipedia.org/wiki/Tonelli%E2%80%93Shanks_algorithm">Tonelli-Shanks-Algorithmus</a>. Ein paar kleine Optimierungen: Wir brauchen nur Primzahlen betrachten, die kongruent 1 oder 7 modulo 8 sind, denn nur für diese ist (p+1)/2 ein quadratischer Rest modulo p (sieht man an der Definition vom <a href="http://en.wikipedia.org/wiki/Legendre_symbol">Legendre Symbol</a>). Anstatt die Wurzeln von (p+1)/2 = 2<sup>-1</sup> mod p zu bestimmen kann man auch die von 2 bestimmen, es gilt nämlich (2n)<sup>2</sup>=2 mod p. Hat man die beiden Wurzeln n<sub>1,2</sub> gefunden (mit n<sub>2</sub> = p - n<sub>1</sub>) so weiß man, dass t(n<sub>i</sub> + kp) ebenfalls alle zusammengesetzt sind, denn auch die sind durch p teilbar. Einzige Ausnahme ist der Fall, dass (p+1)/2 = n<sup>2</sup> ist (d.h. t(n)=p). Im Project Euler Forum zu diesem Problem hat übrigens auch niemand einen wirklich besseren Algorithmus (und ich habe keine einzige Ruby Lösung gesehen).
<h2><a name="271"></a>Problem 271</h2>
For a positive number n, define S(n) as the sum of the integers x, for which 1 &lt; x &lt; n and x<sup>3</sup> = 1 (mod n). (...) Find S(13082761331670030).
<p><a href="271.rb">271.rb</a></p>Relativ einfach für eine so hohe Nummer. Man zerlegt n in Primfaktoren (n ist quadratfrei!) und löst die Gleichung modulo jeder Primzahl (da hat sie dann jeweils maximal 3 Lösungen). Insgesamt ergeben sich dadurch 729 Kombinationen, die man mit dem <a href="http://en.wikipedia.org/wiki/Chinese_remainder_theorem#A_constructive_algorithm_to_find_the_solution">chinesischen Restsatz</a> nur noch zusammensetzen und addieren muss.
<h2><a name="273"></a>Problem 273</h2>
(...) We call S(N) the sum of the values of a of all solutions of a<sup>2</sup> + b<sup>2</sup> = N, 0 &lt;= a &lt;= b, a, b and N integer. (...) Find S(N), for all squarefree N only divisible by primes of the form 4k+1 with 4k+1 &lt; 150.
<p><a href="273.rb">273.rb</a></p>Schöne Aufgabe mit viel Theorie. Habe eine Weile gebraucht bis es in unter einer Minute lief :-) Als erstes sollte man sich fragen warum in der Aufgabe nur Primzahlen p=4k+1 betrachtet werden sollen, dabei stößt man dann auf den <a href="http://en.wikipedia.org/wiki/Fermat's_theorem_on_sums_of_two_squares">Zwei-Quadrate-Satz von Fermat</a>. Interessant ist auch die <a href="http://mathworld.wolfram.com/SumofSquaresFunction.html">Sum of Squares Function</a>. Erst einmal sollte man wissen, dass eine natürliche Zahl N genau dann eine Darstellung als Summe zweier Quadrate hat, wenn die Primfaktoren p=4k+3 von N alle in gerader Anzahl vorkommen. Bei uns ist die Anzahl 0, denn es kommen nur p=4k+1 vor. Damit wissen wir also, dass jedes N mindestes eine solche Darstellung hat. In der Tat gibt es für quadratfreies N genau 2<sup>m</sup> viele (bis auf Reihenfolge und Vorzeichen), wobei m die Anzahl der Primfaktoren ist. Für 4k+1&lt;150 ist m&lt;16, d.h. wir betrachten 2<sup>16</sup> verschiedene Zahlen N die jeweils bis zu 2<sup>16</sup> Darstellungen haben (mit jedem Primfaktor verdoppelt sich die Anzahl). Um die Lösungen zu enumerieren nutzt man die Identität von <a href="http://en.wikipedia.org/wiki/Brahmagupta%E2%80%93Fibonacci_identity">Brahmagupta-Fibonacci</a>: (a<sup>2</sup>+b<sup>2</sup>)(c<sup>2</sup>+d<sup>2</sup>)=(ac-bd)<sup>2</sup>+(ad+bc)<sup>2</sup>=(ac+bd)<sup>2</sup>+(ad-bc)<sup>2</sup>. Es genügt daher die Darstellungen für die Primzahlen zu bruteforcen (davon gibt es jeweils nur eine), und für alle zusammengesetzten N die Darstellungen der Primfaktoren mithilfe dieser Identität zu kombinieren. Dass dies bereits alle Darstellungen sind sieht man mit etwas algebraischer Zahlentheorie daran, dass der Ring der <a href="http://en.wikipedia.org/wiki/Gaussian_integer">Gausschen Zahlen</a> ein <a href="http://en.wikipedia.org/wiki/Unique_factorization_domain">faktorieller Ring</a> ist (d.h. eindeutige Primelementzerlegung; und die beiden Faktoren von 4k+1 = p = a<sup>2</sup>+b<sup>2</sup> = (a+bi)(a-bi) sind prim in <b>Z</b>[i]). Der Algorithmus läuft in etwa 40 Sekunden. Habe ihn auf verschiedene Arten implementiert, aber eine stupide Rekursion ist effizienter als dynamische Programmierung oder Memoization, obwohl dieses Problem eigentlich <a href="http://en.wikipedia.org/wiki/Optimal_substructure">geeignet</a> für dynamische Programmierung sein sollte.
<h2><a name="282"></a>Problem 282</h2>
(...) the <a href="http://en.wikipedia.org/wiki/Ackermann_function">Ackermann function A(m, n)</a> is defined as follows (...). Find &sum;<sup>6</sup><sub>n=0</sub> A(n, n) and give your answer mod 14<sup>8</sup>.
<p><a href="282.rb">282.rb</a></p>Sehr schöne Aufgabe, an der ich mir einige Tage die Zähne ausgebissen habe. Die <a href="http://de.wikipedia.org/wiki/Ackermannfunktion">Ackermannfunktion</a> ist bekannt als das Standardbeispiel für nicht <a href="http://de.wikipedia.org/wiki/Primitiv-rekursive_Funktion">primitiv-rekursive</a> Funktionen und sie wächst extrem schnell. Wichtig an dieser Aufgabe ist, dass man die Lösung modulo 14<sup>8</sup> berechnen soll. Ein direktes Berechnen ist nicht möglich, da bereits A(4,4) viel zu groß ist. Mein erster Ansatz war die Lösung modulo 2<sup>8</sup> und modulo 7<sup>8</sup> zu berechnen und anschließend mit dem <a href="http://de.wikipedia.org/wiki/Chinesischer_Restsatz">chinesischen Restsatz</a> zusammenzusetzen. Vorteil ist, dass 2 (die Basis der <a href="http://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation">Potenztürme</a> der Ackermannfunktion) teilerfremd zu 7<sup>8</sup> ist und man daher den Satz von Euler benutzen kann um die Exponenten in A(4,n) modulo phi(7<sup>8</sup>) zu reduzieren. Das war allerdings nicht nötig. Stattdessen habe ich <a href="http://de.wikipedia.org/wiki/Carmichael-Funktion">Carmichael's Lambda Funktion</a> benutzt (welche, was mir auch neu war, im Gegensatz zur eulerschen Phi Funktion nicht benötigt, dass die Basis teilerfremd zum Modul ist um die Exponenten zu reduzieren). Dadurch spart man sich den CRT. Weiterhin stellt man mit etwas rumprobieren fest, dass A(4,n), A(5,n) und auch A(6,n) extrem schnell stabilisieren (d.h. die Folge der Werte wird konstant), so dass man die sehr großen Werte für n stark vereinfachen kann auf kleine Argumente und daher keine tiefe Rekursion nötig wird.

<h2>Tools</h2>

<p>
Um oft auftauchenden Code leicht wiederverwenden zu können, habe ich einige Teile
in extra Dateien ausgelagert.
</p>

<h3><a name="primetool"></a>primetool.rb</h3>

Ein primitives Primzahlsieb.

<p><a href="primetool.rb">primetool.rb</a></p>
