%fuzzy
fis = mamfis('Name','Test');

fis = addInput(fis,[-1,1],'Name','input');
fis = addMF(fis, 'input', 'gaussmf', [0.3 -1], 'Name', 'Negative');
fis = addMF(fis, 'input', 'gaussmf', [0.3 -0.6], 'Name', 'SlightNegative');
fis = addMF(fis, 'input', 'gaussmf', [0.3 0], 'Name', 'Zero');
fis = addMF(fis, 'input', 'gaussmf', [0.3 0.3], 'Name', 'SlightPositive');
fis = addMF(fis, 'input', 'gaussmf', [0.3 1], 'Name', 'Positive');

fis = addOutput(fis,[0,1],'Name','output');
fis = addMF(fis, 'output', 'gaussmf', [0.1 0], 'Name', 'Low');
fis = addMF(fis, 'output', 'gaussmf', [0.1 0.8], 'Name', 'Medium');
fis = addMF(fis, 'output', 'gaussmf', [0.1 1], 'Name', 'High');
fis = addMF(fis, 'output', 'gaussmf', [0.1 0.95], 'Name', 'VeryHigh');
fis = addMF(fis, 'output', 'gaussmf', [0.1 0], 'Name', 'Low2');


ruleList = [
    1 1 1 1; % Если x = Negative, то y = Low
    2 2 1 1; % Если x = SlightNegative, то y = Medium
    3 3 1 1; % Если x = Zero, то y = High
    4 4 1 1; % Если x = SlightPositive, то y = VeryHigh
    5 5 1 1; % Если x = Positive, то y = Low2
];
fis = addRule(fis, ruleList);

% Правила для проверки
disp(showrule(fis));

% Построение графика зависимости y от x
figure;
plotmf(fis, 'input', 1);
title('Функции принадлежности для входной переменной x');

figure;
plotmf(fis, 'output', 1);
title('Функции принадлежности для выходной переменной y');

% Просмотр правил в Rule Viewer
ruleview(fis);

% Построение поверхностного графика зависимости
figure;
gensurf(fis);
xlabel('input');
ylabel('output');
title('Зависимость y от x');