d = importdata('output\meting2.xlsx')
I = d.data(:,1);
dI = d.data(:,2);
U = d.data(:,3);
dU = d.data(:,4);


% klepstroom vs klepspanning
%klepstroom_vs_klepspanning_fit(d6, d7);
%legend('Meetwaarden','Fit: y=0,813x+12,4     R^2=1', 'Interpreter', 'latex', 'Location' ,'NorthWest')
%hold on

%koudeflow_vs_klepspanning_fit_1(d3_1, d6_1);
%legend('Meetwaarden','Fit: y=0,10x-2,42     R^2=0,94', 'Interpreter', 'latex', 'Location' ,'NorthWest')
%ylabel('Stroming $F_{koud}$ [\%]', 'Interpreter', 'latex')
%xlabel('Klepspanning $U_{klep}$ [V]', 'Interpreter', 'latex')
%hold on

%d3_2 = d.data(11:21,3);
%d6_2 = d.data(11:21,6);
%koudeflow_vs_klepspanning_fit_1(d3_2, d6_2);
%legend('Meetwaarden','Fit: y=0,35x-9,86     R^2=0,99', 'Interpreter', 'latex', 'Location' ,'NorthWest')
%ylabel('Stroming $F_{koud}$ [\%]', 'Interpreter', 'latex')
%xlabel('Klepspanning $U_{klep}$ [V]', 'Interpreter', 'latex')
%hold on

%spanning_vs_celcius(d9, d8);
%legend('Meetwaarden','Fit: y=-0,16x+11,2     R^2=0,99', 'Interpreter', 'latex', 'Location' ,'NorthEast')
%ylabel('Temperatuur $T$ [V]', 'Interpreter', 'latex')
%xlabel('Temperatuur $T$ [$^\circ$C]', 'Interpreter', 'latex')
%hold on

%spanning_vs_celcius(d9, d8);

call(I, U, dI, dU);
legend('Hall apparatus (silver)','Fit: U_H(I)=23,67I-5,059     R^2=0,9996', 'Uncertainty','Interpreter', 'latex', 'Location' ,'NorthWest')
xlabel('Current $I$ [A]', 'Interpreter', 'latex')
ylabel('Hall voltage $U_H$ [$\mu$V]', 'Interpreter', 'latex')

ylim([0 500])

hold on



%xlim([-1 3])
% ylim([1.9 2.4])

% Correcte significantie maken voor plot 1
xtickformat('%.1f')
ytickformat('%.1f')

% Punt naar comma veranderen voor de de assen van plot 1
x = get(gca, 'XTickLabel');
nieuw_x = strrep(x(:),'.',',');
set(gca, 'XTickLabel', nieuw_x)
y = get(gca, 'YTickLabel');
nieuw_y = strrep(y(:),'.',',');
set(gca, 'YTickLabel', nieuw_y)

% Legend
%figure( 'Name', 'untitled fit 1', 'Location', 'NorthEast');

% Label axes
grid on