%baza faktów

mezczyzna(michal).
mezczyzna(pawel).
mezczyzna(marek).
mezczyzna(andrzej).
mezczyzna(konrad).
mezczyzna(karol).
mezczyzna(piotr).
mezczyzna(igor).
mezczyzna(franciszek).
mezczyzna(tomasz).

kobieta(iwona).
kobieta(natalia).
kobieta(maria).
kobieta(monika).
kobieta(justyna).
kobieta(judyta).
kobieta(katarzyna).
kobieta(jolanta).
kobieta(wieslawa).
kobieta(weronika).


%baza pytań




plywac(X) :-
    (mezczyzna(X);kobieta(X)),
    write(X),
    write(' czy X potrafi pływać? /tak/nie/'),nl,
    read(Plywac),poziomI(Plywac,X).

poziomI(tak,X) :-
    write(X),
    write(' czym X potrafi pływać? /tak/nie/'),nl,
    read(Czym),poziomIIa(Czym,X).

poziomI(nie,X) :-
    write(X),
    write(' czy X chce się nauczyć pływać? /tak/nie/'),nl,
    read(Nauczyc),poziomIIb(Nauczyc,X).

poziomIIa(tak,X) :-
    write(X),
    write(' czy X potrafi pływać z łódką z silnikiem spalinowym /tak/nie/'),nl,
    read(Lodka),poziomIIIa(Lodka,X).

poziomIIa(nie,X) :-
    write(X),
    write(' czy X potrafi pływać kraulem /tak/nie/'),nl,
    read(Kraul),poziomIIIa(Kraul,X).

poziomIIIa(tak,X) :-
    write(X),
    write(' czy ta łódka jest własnością X /tak/nie/'),nl,
    read(Wlasnosc),w12(Wlasnosc,X).

poziomIIIa(nie,X) :-
    write(X),
    write(' czy X ma prawojazdy na łódkę /tak/nie/'),nl,
    read(Prawojazdy),w34(Prawojazdy,X).

poziomIIIb(tak,X) :-
    write(X),
    write(' czy X powinien się nauczyć pływać kolejnym stylem? /tak/nie/'),nl,
    read(Nowystyl),w56(Nowystyl,X).

poziomIIIb(nie,X) :-
    write(X),
    write(' czy X chce się nauczyć pływać kraulem? /tak/nie/'),nl,
    read(Nauka),w78(Nauka,X).

poziomIIb(tak,X) :-
    write(X),
    write(' czy X chce pływać plecami do góry? /tak/nie/'),nl,
    read(Plecy),poziomIIIc(Plecy,X).

poziomIIb(nie,X) :-
    write(X),
    write(' czy X lubi spędzać czas nad jeziorem? /tak/nie/'),nl,
    read(Jezioro),poziomIIId(Jezioro,X).

poziomIIIc(tak,X) :-
    write(X),
    write(' czy X chce się nauczyć pływać trudnym stylem? /tak/nie/'),nl,
    read(Trudny),w910(Trudny,X).

poziomIIIc(nie,X) :-
    write(X),
    write(' czy X lubi leżeć w wodzie? /tak/nie/'),nl,
    read(Lezec),w1112(Lezec,X).

poziomIIId(tak,X) :-
    write(X),
    write(' czy X ma domek nad jeziorem? /tak/nie/'),nl,
    read(Domekj,X),w1314(Domekj,X).

poziomIIId(nie,X) :-
    write(X),
    write(' czy X ma domek nad morzem? /tak/nie/'),nl,
    read(Domekm,X),w1516(Domekm,X).

w12(tak,X) :-
    write(X),
    write(' X musi utrzymać swoją łódkę spalinową').

w12(nie,X) :-
    write(X),
    write(' X musi kupić swoją łódkę spalinową').

w34(tak,X) :-
    write(X),
    write(' X musi brać ze swoją prawo jazdy na łódkę').

w34(nie,X) :-
    write(X),
    write(' X musi zdać prawo jazdy na motorówkę').

w56(tak,X) :-
    write(X),
    write(' X powinien nauczyć sie pływać motylkiem').

w56(nie,X) :-
    write(X),
    write(' X powienien więcej pływać').

w78(tak,X) :-
    write(X),
    write(' X powienien się doszkolić z pływania kraulem').

w78(nie,X) :-
    write(X),
    write(' X powinien nauczyć się pływać śrubką').

w910(tak,X) :-
    write(X),
    write(' X powinien nauczyć się pływać delfinkiem').

w910(nie,X) :-
    write(X),
    write(' X powinien nauczyć się pływać pieskiem').

w1112(tak,X) :-
    write(X),
    write(' X powinien nauczyć się pływać stylem grzbietowym').

w1112(nie,X) :-
    write(X),
    write(' X powienin nauczyć się pływać żabką').

w1314(tak,X) :-
    write(X),
    write(' X musi sędzać więcej czasu w swoim domku nad jeziorem').

w1314(nie,X) :-
    write(X),
    write(' X musi kupić domek nad jeziorem').

w1516(tak,X) :-
    write(X),
    write(' X musi spędzać więcej czasu w swoim domku nad morzem').

w1516(nie,X) :-
    write(X),
    write(' X powienien kupić domek nad morzem').
