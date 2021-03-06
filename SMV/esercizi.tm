<TeXmacs|1.99.2>

<style|generic>

<\body>
  <section|Abstract Data Type>

  <subsection|Ex 1>

  Assiomi

  <\eqnarray*>
    <tformat|<table|<row|<cell|x+0=x>|<cell|>|<cell|<around*|(|1|)>>>|<row|<cell|x+suc<around*|(|y|)>=suc<around*|(|x+y|)>>|<cell|>|<cell|*<around*|(|2|)>>>>>
  </eqnarray*>

  Condizione

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|<with|font-series|bold|<around*|[|0|]>:
    x+suc<around*|(|0|)>=suc<around*|(|x|)>>>>|<row|<cell|<around*|(|2|)>:
    x+suc<around*|(|y|)>=suc<around*|(|x+y|)>>|<cell|axiom>|<cell|<around*|[|1|]>:
    x+suc<around*|(|y|)>=suc<around*|(|x+y|)>>>|<row|<cell|y=0\<rightarrow\><around*|[|1|]>>|<cell|subst>|<cell|<around*|[|2|]>:
    x+suc<around*|(|0|)>=suc<around*|(|x+0|)>>>|<row|<cell|<around*|(|1|)>:
    x+0=x>|<cell|axiom>|<cell|<around*|[|3|]>: x+0 =
    x>>|<row|<cell|OP:suc\<rightarrow\> <around*|[|3|]>>|<cell|substitivity>|<cell|<around*|[|4|]>:suc<around*|(|x+0|)>=suc<around*|(|x|)>>>|<row|<cell|<around*|[|2|]>\<rightarrow\><around*|[|4|]>>|<cell|transitivity>|<cell|<with|font-series|bold|<around*|[|5|]>:x+suc<around*|(|0|)>=suc<around*|(|x|)>>>>>>
  </eqnarray*>

  <subsection|Induttivita'>

  Se possiamo provare per tutte le possibili combinazioni di variabili un
  teorema si dimostra vero allora e' vero!

  Nella pratica non e' possibile, ma si procede cosi

  Si prova per tutti i generatori.

  <\eqnarray*>
    <tformat|<cwith|1|1|1|-1|cell-background|light
    grey>|<table|<row|<cell|0\<rightarrow\>x>|<cell|<with|font-series|bold|hyptesis>>|<cell|suc<around*|(|0|)>+0=suc<around*|(|0|)>>>|<row|<cell|<around*|(|1|)>:x+0=x>|<cell|axiom>|<cell|<around*|[|1|]>:x+0=x>>|<row|<cell|*x=suc<around*|(|0|)>\<rightarrow\><around*|[|1|]>>|<cell|subst.>|<cell|<with|font-series|bold|<around*|[|2|]>:suc<around*|(|0|)>+0=suc<around*|(|0|)>>>>>>
  </eqnarray*>

  <\eqnarray*>
    <tformat|<cwith|1|1|1|-1|cell-background|pastel
    grey>|<table|<row|<cell|suc<around*|(|x|)>\<rightarrow\>x>|<cell|<with|font-series|bold|hypotesis>>|<cell|suc<around*|(|0|)>+suc<around*|(|x|)>=suc<around*|(|suc<around*|(|x|)>|)>>>|<row|<cell|<around*|(|1|)>:x+0=x>|<cell|axion>|<cell|<around*|[|1|]>:x+0=x>>|<row|<cell|x=suc<around*|(|x|)>\<rightarrow\><around*|[|1|]>>|<cell|subst.>|<cell|<around*|[|2|]>:suc<around*|(|x|)>+0=suc<around*|(|x|)>>>|<row|<cell|OP:suc\<rightarrow\><around*|[|2|]>>|<cell|substitivity>|<cell|<around*|[|3|]>:suc<around*|(|suc<around*|(|x|)>+0|)>=suc<around*|(|suc<around*|(|x|)>|)>>>|<row|<cell|<around*|(|2|)>:x+suc<around*|(|y|)>=suc<around*|(|x+y|)>>|<cell|axiom>|<cell|<around*|[|4|]>:x+suc<around*|(|y|)>=suc<around*|(|x+y|)>>>|<row|<cell|y=0\<rightarrow\><around*|[|4|]>>|<cell|subst.>|<cell|<around*|[|5|]>:x+suc<around*|(|0|)>=suc<around*|(|x+0|)>>>|<row|<cell|<around*|[|5|]>>|<cell|simmetry>|<cell|<around*|[|6|]>:suc<around*|(|x+0|)>=x+suc<around*|(|0|)>>>|<row|<cell|<around*|[|6|]>\<rightarrow\><around*|[|3|]>>|<cell|transitivity>|<cell|<around*|[|5|]>:suc<around*|(|0|)>+suc<around*|(|x|)>=suc<around*|(|suc<around*|(|x|)>|)>>>>>
  </eqnarray*>

  \;

  \;

  <section|Esercizi>

  <subsection|ADT Petri Net>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Boolean>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|True>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|False>|<cell|\<rightarrow\>>|<cell|Boolean>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<cwith|5|5|1|-1|cell-hyphen|n>|<cwith|5|5|1|1|cell-hyphen|t>|<cwith|5|5|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Natural>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|0>|<cell|:\<rightarrow\>>|<cell|Natural>>|<row|<cell|succ<around*|(|Natural|)>>|<cell|\<rightarrow\>>|<cell|Natural>>|<row|<cell|>|<cell|<with|font-series|bold|Operation>>|<cell|>>|<row|<cell|equal<around*|(|Natural\<nocomma\>,Natural|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Place>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|place<around*|(|Natural|)>>|<cell|\<rightarrow\>>|<cell|Place>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Transition>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|transition<around*|(|Natural|)>>|<cell|\<rightarrow\>>|<cell|Transition>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<cwith|5|5|1|-1|cell-hyphen|n>|<cwith|5|5|1|1|cell-hyphen|t>|<cwith|5|5|1|-1|cell-background|light
    grey>|<table|<row|<cell|<with|font-series|bold|ADT
    Arc>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|preArc<around*|(|Place,Transition,Natural|)>>|<cell|\<rightarrow\>>|<cell|Arc>>|<row|<cell|postAst<around*|(|Place,Transition,Natural|)>>|<cell|\<rightarrow\>>|<cell|Arc>>|<row|<cell|>|<cell|<with|font-series|bold|Operation>>|<cell|>>|<row|<cell|Valuation<around*|(|Arc|)>>|<cell|\<rightarrow\>>|<cell|Natural>>|<row|<cell|hasPlace<around*|(|Place|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|hasTranstion<around*|(|Place|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|pre<around*|(|Arc|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|post<around*|(|Arc|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>>>
  </eqnarray*>

  \;

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<cwith|7|7|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold| Petri
    Net>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|empty>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|addPlace<around*|(|Place,Petri
    Net|)>>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|addTransition<around*|(|Transition\<nocomma\>\<nocomma\>\<nocomma\>,Petri
    Net|)>>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|addArc<around*|(|Arc,Petri
    Net|)>>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|>|<cell|<with|font-series|bold|Operator>>|<cell|>>|<row|<cell|isConnected<around*|(|Place,Transition|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|getArc<around*|(|Place,Transition|)>>|<cell|\<rightarrow\>>|<cell|Arc>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Marking>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|empty>|<cell|\<rightarrow\>>|<cell|Marking>>>>
  </eqnarray*>

  \;

  <subsubsection|Parte 2>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Boolean>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|True>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|False>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|>|<cell|Axiom>|<cell|>>|<row|<cell|not<around*|(|Boolean|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>|<row|<cell|not<around*|(|True|)>>|<cell|\<rightarrow\>>|<cell|False>>|<row|<cell|not<around*|(|False|)>>|<cell|\<rightarrow\>>|<cell|True>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<cwith|5|5|1|-1|cell-hyphen|n>|<cwith|5|5|1|1|cell-hyphen|t>|<cwith|5|5|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Natural>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|0>|<cell|:\<rightarrow\>>|<cell|Natural>>|<row|<cell|succ<around*|(|Natural|)>>|<cell|\<rightarrow\>>|<cell|Natural>>|<row|<cell|>|<cell|<with|font-series|bold|Operation>>|<cell|>>|<row|<cell|equal<around*|(|Natural\<nocomma\>,Natural|)>>|<cell|\<rightarrow\>>|<cell|Boolean>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Place>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|p1>|<cell|\<rightarrow\>>|<cell|Place>>|<row|<cell|p2>|<cell|\<rightarrow\>>|<cell|Place>>|<row|<cell|\<ldots\>>|<cell|\<ldots\>>|<cell|\<ldots\>>>|<row|<cell|pn>|<cell|\<rightarrow\>>|<cell|Place>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold|
    Transition>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|empty>|<cell|\<rightarrow\>>|<cell|Transition>>|<row|<cell|pre:Place,Nat,Transtion>|<cell|\<rightarrow\>>|<cell|Transition>>|<row|<cell|post:Place,Nat,Transition>|<cell|\<rightarrow\>>|<cell|Transition>>>>
  </eqnarray*>

  \;

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold| Petri
    Net>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|emptyNet>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|Petri Net+Place>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|Petri Net + Transition>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>>>
  </eqnarray*>

  \;

  <with|font-series|bold|Esempio:>

  <center|<small-figure|<with|gr-mode|<tuple|edit|text-at>|gr-frame|<tuple|scale|1cm|<tuple|1.53991gw|0.190026gh>>|gr-geometry|<tuple|geometry|0.326671par|0.333336par|center>|gr-fill-color|pastel
  blue|gr-text-at-halign|center|gr-line-width|5ln|gr-color|dark
  blue|<graphics||<with|fill-color|pastel
  blue|line-width|2ln|<carc|<point|-6.03154|3.29572>|<point|-4.74035917449398|3.50739185077391>|<point|-5.24836287868766|2.61838536843498>>>|<with|fill-color|pastel
  blue|line-width|2ln|<carc|<point|-5.77753|-0.00630044>|<point|-4.444023680381|-0.0909677205979627>|<point|-4.74035917449398|-0.789472813864268>>>|<with|color|dark
  blue|fill-color|pastel blue|line-width|5ln|<line|<point|-3.99482371688971|1.49995711820286>|<point|-2.93647992670582|1.49995779421821>>>|<with|color|dark
  blue|fill-color|pastel blue|line-width|5ln|<line|<point|-7.23804|1.49654>|<point|-6.28553710808308|1.51771067601535>>>|<with|arrow-end|\|\<gtr\>|line-width|2ln|<line|<point|-6.90209|1.50401>|<point|-5.66378743315995|0.208762074132191>>>|<with|arrow-end|\|\<gtr\>|line-width|2ln|<line|<point|-4.54899|0.167354>|<point|-3.51532469984467|1.51771032280125>>>|<with|arrow-end|\|\<gtr\>|line-width|2ln|<line|<point|-4.84943|2.85228>|<point|-3.73279521124695|1.51771018389232>>>|<with|arrow-end|\|\<gtr\>|line-width|2ln|<line|<point|-3.25467|1.51771>|<point|-4.70384520205581|3.19023126294599>>>|<text-at||<point|1.44035|1.70821>>|<with|text-at-halign|center|<text-at|<with|font-series|bold|p2>|<point|-5.1369890197116|-0.367211271332187>>>|<text-at|<with|font-series|bold|p1>|<point|-5.560325439873|3.16764783701548>>>>|>>

  Petry Net per la Figure 1:

  <\cpp-code>
    emptyNet + p1 + p2 + post(p2,1,empty) +
    pre(p2,1,post(p1,1,pre(p1,1,empty)))
  </cpp-code>

  \;

  Variante con controlllo

  <\eqnarray*>
    <tformat|<cwith|2|2|1|-1|cell-background|light
    grey>|<cwith|6|6|1|-1|cell-background|light
    grey>|<table|<row|<cell|Sort<with|font-series|bold| Petri
    Net>>|<cell|>|<cell|>>|<row|<cell|>|<cell|<with|font-series|bold|Generator>>|<cell|>>|<row|<cell|emptyNet>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|Petri Net+Place>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|Petri Net + Transition>|<cell|\<rightarrow\>>|<cell|Petri
    Net>>|<row|<cell|>|<cell|<with|font-series|bold|Axiom>>|<cell|>>|<row|<cell|\<b-P\>\<b-n\>+\<b-P\>+\<b-P\>>|<cell|=>|<cell|\<b-P\>\<b-n\>+\<b-P\>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|has<rsub|p><around*|(|emptyNet,\<b-P\>|)>>|<cell|=>|<cell|False>>|<row|<cell|has<rsub|p><around*|(|\<b-P\>\<b-n\>+\<b-P\><rsub|x>,\<b-P\>|)>>|<cell|<around*|(|\<b-P\><rsub|x>\<neq\>\<b-P\>|)>=>|<cell|has<rsub|p><around*|(|\<b-P\>\<b-n\>,\<b-P\>|)>>>|<row|<cell|>|<cell|<around*|(|\<b-P\><rsub|x>=\<b-P\>|)>=>|<cell|True>>|<row|<cell|has<rsub|p><around*|(|\<b-P\>\<b-n\>+\<b-T\>,\<b-P\>|)>>|<cell|=>|<cell|has<rsub|p><around*|(|\<b-P\>\<b-n\>,\<b-P\>|)>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|\<b-P\>\<b-n\>+\<b-P\>>|<cell|not<around*|(|has<rsub|p><around*|(|\<b-P\>\<b-n\>,\<b-P\>|)>|)>=>|<cell|\<b-P\>\<b-n\>+\<b-P\>>>|<row|<cell|>|<cell|has<rsub|p><around*|(|\<b-P\>\<b-n\>,\<b-P\>|)>=>|<cell|\<b-P\>\<b-n\>>>>>
  </eqnarray*>

  \;

  \;

  \;

  <section|CTL>

  Sintassi

  <\itemize>
    <item>A(<math|\<forall\>>),E(<math|\<exists\>>)

    <item>N(next), G(globaly), F(finally), U (until), W (weak)

    <item><math|\<vee\>,\<wedge\>,\<neg\>,true,false> operatori possibili

    <item>AP (proposizioni atomiche)
  </itemize>

  \;

  <subsection|Esercizi>

  <with|gr-mode|<tuple|group-edit|move>|gr-frame|<tuple|scale|1cm|<tuple|0.599991gw|-43536tmpt>>|gr-geometry|<tuple|geometry|1par|0.266669par|center>|gr-arrow-end|\<gtr\>|<graphics||<carc|<point|-5.78175517987191|2.03538180242575>|<point|-5.92992546694692|2.75505390654005>|<point|-4.99858534259185|2.47988523343514>>|<carc|<point|-3.51033629928892|1.42403499941829>|<point|-3.65850658636393|2.14370710353259>|<point|-2.72716646200886|1.86853843042768>>|<carc|<point|-3.62801144062024|2.95992891638223>|<point|-3.77618172769525|3.67960102049653>|<point|-2.84484160334018|3.40443234739162>>|<carc|<point|-1.56725405976903|3.13748423124577>|<point|-1.71542434684404|3.85715633536007>|<point|-0.78408422248897|3.58198766225516>>|<carc|<point|0.184180876374428|3.22099564341529>|<point|0.0360105892994187|3.94066774752959>|<point|0.96735071365449|3.66549907442468>>|<carc|<point|0.19015249604428|1.51204119560343>|<point|0.0419822089692699|2.23171329971773>|<point|0.97332233332434|1.95654462661282>>|<with|arrow-end|\<gtr\>|<line|<point|-4.99859|2.47989>|<point|-3.86245664187241|3.33588878832995>>>|<with|arrow-end|\<gtr\>|<line|<point|-2.84484|3.40443>|<point|-1.79065870976834|3.44984589532172>>>|<with|arrow-end|\<gtr\>|<line|<point|-0.784084|3.58199>|<point|-0.0510329671099158|3.70003178540952>>>|<with|arrow-end|\<gtr\>|<line|<point|-4.99859|2.47989>|<point|-3.74418027993846|1.79473435996929>>>|<with|arrow-end|\<gtr\>|<line|<point|-2.72717|1.86854>|<point|-0.0429353185732452|1.87671924259151>>>|<text-at|i=1|<point|-5.89974|3.45902>>|<text-at|i=2|<point|-3.86772|4.00936>>|<text-at|i=4|<point|-1.53937|4.39036>>|<text-at|i=3|<point|0.917779|3.87206>>|<text-at|i=2|<point|-2.64005|2.44301>>|<text-at|i=3|<point|0.9694678347665|2.15697175552322>>|<text-at||<point|-1.11786|1.61751>>>>

  <\itemize>
    <item>se i=2 allora + tardi i=3

    AG(i=2 <math|\<Rightarrow\>>AF(i=3))

    <item>i=2 fino a che i=3

    (i=2) AW(i=3)

    <item>se i=2 allora piu' tardi in una esecuzione avra' i=3

    AG(i=2 <math|\<Rightarrow\>> EF(i=3))

    <item>se i=2 allora resta 2\ 

    AG(i=2 <math|\<Rightarrow\>> (i=2)AU(i=3))
  </itemize>

  AG p : p7 and !p6 and \ !p5(!p6,p7), !p4(!p5,p2), !p3(p2,!p4), !p2(!p3),
  !p1(!p2,!p3)

  EF AG p :\ 

  p7 !p6 !p5 !p4 !p3 !p2 !p1

  p7 !p6 p5( p7, !p6) p4(p5,!p2) p3(p4,!p2) p2(p3) p1(p2,p3)

  p7 !p6 p5(p7,!p6) p4(p5,p2) p3(p4,p2) p2(p3) p1(p2,p3)
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|4|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|2|1>>
    <associate|auto-5|<tuple|2.1|1>>
    <associate|auto-6|<tuple|2.1.1|3>>
    <associate|auto-7|<tuple|1|4>>
    <associate|auto-8|<tuple|3|?>>
    <associate|auto-9|<tuple|3.1|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal||<pageref|auto-7>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Abstract
      Data Type> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Ex 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Induttivita'
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Esercizi>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>ADT Petri Net
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|2.1.1<space|2spc>Parte 2
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>CTL>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Esercizi
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>