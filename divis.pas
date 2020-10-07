program divis;
uses crt;

var
   num,divi,res,aux,desi:longint;
   cont,cuen:integer;

procedure dividir;
begin
 	while aux>0 do
 	begin
      		aux:=aux-divi;
      		if aux>=0 then
      		begin
           			res:=res+1;
      		end;
 	end;
 	while (aux <> 0) and (cuen <= 8) do
 	begin
      		aux:=(aux+divi)*10;
      		while aux>0 do
      		begin
           			aux:=aux-divi;
           			if aux>=0 then
           			begin
                			cont:=cont+1;
           			end;
      		end;
      		desi:=(desi*10)+cont;
      		cont:=0;
      		cuen:=cuen+1;
 	end;
end;


BEGIN
 	num:=0;divi:=0;res:=0;aux:=0;cont:=0;cuen:=0;
 	clrscr;
 	write('Introduzca el numero : ');readln(num);
 	write('Introduzca el divisor: ');readln(divi);
 	aux:=num;
 	if divi <> 0 then
 	begin
      		if (divi > 0) and (num > 0) then
      		begin
           			dividir;
      		end;
      		if (divi < 0) and (num < 0) then
      		begin
           			aux:=aux*-1;
           			divi:=divi*-1;
           			dividir;
           			divi:=divi*-1;
      		end;
      		if (divi < 0) and (num > 0) then
      		begin
           			divi:=divi*-1;
           			dividir;
           			divi:=divi*-1;
           			res:=res*-1;
      		end;
      		if (divi > 0) and (num < 0) then
      		begin
           			aux:=aux*-1;
           			dividir;
           			res:=res*-1;
      		end;
      		if (((divi > 0) and (num < 0)) or ((divi < 0) and (num > 0))) and (res = 0) then
      		begin
           			writeln('El resultado de ',num,'/',divi,' es: -',res,',',desi);
      		end
      		else
      		begin
           			if desi = 0 then
           			begin
                			writeln('El resultado de ',num,'/',divi,' es: ',res);
           			end
           			else
           			begin
                			writeln('El resultado de ',num,'/',divi,' es: ',res,',',desi);
           			end;
      		end;
 	end
 	else if divi = 0 then
 	begin
      		write('Error de division entre Zero (0).');
 	end;
 	readkey;
END.
