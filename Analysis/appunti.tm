<TeXmacs|1.99.2>

<style|generic>

<\body>
  <doc-data|<doc-title|Analysis and Processing of
  Information>|<doc-author|<\author-data|<author-name|Martino Ferrari>>
    \;
  </author-data>>>

  <with|color|dark red|<with|font-series|bold|Importante imparare PCA e
  differenza tra SVD e PCA>!!>

  <section|Introduzione>

  <subsection|Estrazione delle informazioni>

  Capire quali informazioni si possono estrarre da un sample (ex: una
  immagine). Queste caratteristiche possono essere usate in diversi modi, ex:
  descrivere automaticamente, identificare, scopi statistiche.

  <subsubsection|Come estrrare queste informazioni?>

  Per esempio una immagine e' composta da <math|n\<times\>m> pixel con 3
  componenti, quindi una informazione molto grande, milioni di megabytes.
  Analizzare piu' immagini in modo completo richiederebbe troppa
  potenza/memoria.

  Inoltre come posso estrapolare qualcosa di utile? per esempio come posso
  trovare immagini simili?\ 

  La risposta e' estrarre sotto rappresentazioni molto piu' piccole e
  significative della immagine di partenza, chiamate
  <with|font-series|bold|features> (che possono essere
  <with|font-series|bold|descriptors, fingerprints, statistical moments>).

  Questo <with|font-series|bold|ovviamente> semplifica le analisi sia dal
  punto di vista della memoria che di quello della computazione.

  <with|font-series|bold|Ma soprattutto> queste features sono molto piu'
  robuste e dipendenti solo dal contesto semantico (e non per esempio da
  quello geometrico, risoluzione, rotazioni etc).

  In questo campo ci sono due direzioni principali:

  <\itemize>
    <item>Hand-crafted (fatte a mano), ovvero definite a partire dalle
    conoscenze personali, per esempio:

    <\itemize>
      <item>Sift features

      <item>ORB descriptors

      <item>KAZA and aKAZA\ 
    </itemize>

    <item>Learned (imparate), ovvero imparate dai dati stessi (grazie a Big
    Data), questo garantisce piu' robustezza per il futuro e piu' economiche
    da generare, per esempio:

    <\itemize>
      <item>Deep Nets (o deep learning), ex:

      voglio trasformare l'immagine <math|y> in <math|X> con l'operatore
      <math|\<varphi\><around*|(|y|)>>, per fare cio' cerco di minimizzaree
      <math|<around*|\<\|\|\>|X-\<varphi\><around*|(|y|)>|\<\|\|\>><rsup|2>>,
      per fare cio' si decompone il problema in due
      <math|\<varphi\><rsub|dec><around*|(||)>> e
      <math|\<varphi\><rsub|enc><around*|(||)>> e si decompone ancora in
      funzioni di encoding e decoding, esistono set gia' addestrati, come
      <with|font-series|bold|VGG>[<hlink|link|https://github.com/vedaldi/practical-cnn>]
      sviluppato da A. Vedaldi, addestrato usando imageNet.
    </itemize>
  </itemize>

  Le tecniche chiavi sono:

  <\itemize>
    <item>PCA/ICA

    <item>Riduzione di dimensioni

    <item>Decomposizione

    <item>K-means algorithm
  </itemize>

  <subsubsection|Mining>

  Come trovare le fetures in comune correlati da una moltitudine di dati (che
  avranno moltissime features in comune ma non correlate con quello che si
  sta cercando).

  <subsubsection|Ricognition & Classification>

  Si trtta di due problemi basici:

  <\itemize>
    <item>2-ary classification (binary)

    <item>M-ary classification
  </itemize>

  Utilizzato per <with|font-shape|italic|hypotesis testing>, nel caso della
  classificazione binaria:

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>>|<cell|Y\<sim\>f<around*|(|y<around*|\||H<rsub|0>|\<nobracket\>>|)>>>|<row|<cell|H<rsub|1>>|<cell|Y\<sim\>f<around*|(|y<around*|\||H<rsub|1>|\<nobracket\>>|)>>>>>>|\<nobracket\>>
  </equation*>

  Quindi si trova una linea di divisione tra i vettori <math|H<rsub|0>> e
  <math|H<rsub|1>> (come in figura 1).

  <center|<small-figure|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|0.999951gw|0.340015gh>>|gr-geometry|<tuple|geometry|0.533336par|0.420008par|center>|gr-point-style|square|<graphics||<text-at|H0|<point|-6.92054|2.96311>>|<point|-6.89937|2.05293>|<point|-5.46003|2.05293>|<point|-6.15854|1.65076>|<point|-5.84103|0.973426>|<point|-6.58187|0.465422>|<point|-5.12136|-0.0425817>|<point|-6.26437|-0.381251>|<point|-5.4812|0.61359>|<text-at|H1|<point|-2.28501|3.42878>>|<with|point-style|square|<point|-3.34335|2.47627>>|<with|point-style|square|<point|-3.11051|1.3756>>|<with|point-style|square|<point|-2.75068|1.3756>>|<with|point-style|square|<point|-0.909165|2.3916>>|<with|point-style|square|<point|-1.3325|0.61359>>|<with|point-style|square|<point|-2.68718|2.92077>>|<with|point-style|square|<point|-2.43318|2.49744>>|<with|point-style|square|<point|-3.87252|-0.148416>>|<with|point-style|square|<point|-4.25352|1.14276>>|<with|point-style|square|<point|-3.49152|0.550089>>|<line|<point|-5.26953|4.10612>|<point|-4.12652136525996|-1.46075869824051>>|<with|point-style|square|<point|-3.68112514882921|1.81035851303082>>>>|>>

  Questo in pratica vuole dire trovare la distribuzione statistica teorica
  del problema. Inoltre la linea di divisione non sara' cosi semplice
  ovviamente.

  Per misurare la distanza tra due PDF si usa la divergenza.

  Il gioco o l'arte e' scegliere quale e' la probabilita' di accettare un
  falso positvo o un falso negativo.

  Nel caso M-ary \ si ottiene:

  <\equation*>
    <around*|{|<tabular|<tformat|<table|<row|<cell|H<rsub|0>>|<cell|Y\<sim\>f<around*|(|y<around*|\||H<rsub|0>|\<nobracket\>>|)>>>|<row|<cell|H<rsub|1>>|<cell|Y\<sim\>f<around*|(|y<around*|\||H<rsub|1>|\<nobracket\>>|)>>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|H<rsub|M-1>>|<cell|Y\<sim\>f<around*|(|y<around*|\||H<rsub|M-1>|\<nobracket\>>|)>>>>>>|\<nobracket\>>
  </equation*>

  Si ritrova un problema simile a quello della tasselazione di Vonroy\ 

  <section|Consigli e Appunti>

  <subsection|Prima lezione>

  <\equation*>
    <wide|X|\<bar\>>=<rsup|><rsub|><around*|[|x<rsub|1>,x<rsub|2>,\<ldots\>,x<rsub|m>|]>
  </equation*>

  <\equation*>
    SVD\<rightarrow\>X=U\<Sigma\>V<rsup|T>
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|U<rsup|T>U=U U<rsup|T>=I>|<cell| >|<cell|U
    e<rprime|'> una matrice di eigen vectors>>|<row|<cell|\<Sigma\>=<around*|[|<tabular|<tformat|<table|<row|<cell|\<lambda\><rsub|1>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<lambda\><rsub|2>>|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|\<lambda\><rsub|3>>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|\<ldots\>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>|<cell|>|<cell|\<lambda\><rsub|m>>>>>>|]>>|<cell|\<rightarrow\>>|<cell|u<rsub|1>=\<lambda\><rsub|1>+\<ldots\>>>|<row|<cell|rectangular
    <around*|[|A|]>\<rightarrow\>SVD>|<cell|>|<cell|>>|<row|<cell|quadtrata
    <around*|[|A|]>\<rightarrow\> PCA>|<cell|>|<cell|>>>>
  </eqnarray*>

  La SVM e' una tecnica simile a quella della M-ary dove invece di utilizzare
  le PDF si cerca di massimizzare la distanza tra i punti piu' vicini degli M
  punti.

  Search & Intdentification

  [01011]

  Img \ \ \ Hash (non crittografiche)\ 

  \ \ \ \ \ \ \ \ \ 1 \ \ \ \ \ \ \ \ n\ 

  X1 <math|\<rightarrow\>> [0101001] b1

  X2 <math|\<rightarrow\>> [1011010] b2

  ...

  XN <math|\<rightarrow\>> [1101001] bn

  \;

  Voglio classificare Y=Xi+Z (Z = noise)

  bi = [1001101]

  by = bi con qualche bit flippato =[1010101]

  Si puo' sapere la probabilita' di avere N bit swappati a seconda del
  livello del rumore
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-3|<tuple|1.1.1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-4|<tuple|1.1.2|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-5|<tuple|1.1.3|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-6|<tuple|1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-7|<tuple|2|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
    <associate|auto-8|<tuple|2.1|?|../../../.TeXmacs/texts/scratch/no_name_5.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Estrazione delle
      informazioni <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|2tab>|1.1.1<space|2spc>Come estrrare queste
      informazioni? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>
    </associate>
  </collection>
</auxiliary>