%1
U = 1:7;

% Определение нечётких множеств
A = [1, 0.8, 0.4, 0, 0, 0, 0]; % начало недели
B = [0, 0.4, 1, 0.4, 0.1, 0, 0]; % середина недели
C = [0, 0, 0, 0, 0.5, 1, 1]; % конец недели
D = [0, 0.1, 0.6, 1, 0.6, 0.1, 0]; % не начало и не конец недели

% Построение графиков
figure;
hold on;
plot(U, A, 'r', 'DisplayName', 'Начало недели');
plot(U, B, 'g', 'DisplayName', 'Середина недели');
plot(U, C, 'b', 'DisplayName', 'Конец недели');
plot(U, D, 'm', 'DisplayName', 'Не начало и не конец недели');
xlabel('Дни недели');
ylabel('Степень принадлежности');
title('Множества недель');
legend show;
hold off;

% Проверка на унимодальность
is_unimodal_A = isUnimodal(A);
is_unimodal_B = isUnimodal(B);
is_unimodal_C = isUnimodal(C);
is_unimodal_D = isUnimodal(D);

disp(['A унимодально: ', num2str(is_unimodal_A)]);
disp(['B унимодально: ', num2str(is_unimodal_B)]);
disp(['C унимодально: ', num2str(is_unimodal_C)]);
disp(['D унимодально: ', num2str(is_unimodal_D)]);

function result = isUnimodal(membership)
    % Проверка на унимодальность
    % diff(membership): Эта функция вычисляет разности между соседними элементами вектора
    % all(diff(membership) >= 0): Эта часть проверяет, являются ли все разности неотрицательными.
    result = all(diff(membership) >= 0) || all(diff(membership) <= 0);
end


%2
% U = 1:120;
% U_tru = ["1-20","21-40","41-60","61-80","81-100","101-120"];
% 
% %А - молодой
% A = [[1,2,3,4,5,6]
%     [1/2,1,2,3,4,5]
%     [1/3,1/2,1,2,3,4]
%     [1/4,1/3,1/3,1,2,3]
%     [1/5,1/4,1/4,1/2,1,2]
%     [1/6,1/5,1/5,1/3,1/2,1]];
% degreesA = Degree(A);
% disp(display(degreesA,U_tru,"A"))
% 
% %B - старый
% B = [[1,1/2,1/3,1/4,1/5,1/6]
%     [2,1,1/2,1/3,1/4,1/5]
%     [3,2,1,1/2,1/3,1/4]
%     [4,3,2,1,1/2,1/3]
%     [5,4,3,2,1,1/2]
%     [6,5,4,3,2,1]];
% degreesB = Degree(B);
% disp(display(degreesB,U_tru,"B"))
% 
% %С - очень молодой
% C = [[1,2,3,5,6,7]
%     [1/2,1,2,3,5,6]
%     [1/3,1/2,1,2,3,5]
%     [1/5,1/3,1/2,1,2,3]
%     [1/6,1/5,1/3,1/2,1,2]
%     [1/7,1/6,1/5,1/3,1/2,1]];
% degreesC = Degree(C);
% disp(display(degreesC,U_tru,"C"))
% 
% %D - не старый
% D = [[1,2,3,5,6,7]
%     [1/2,1,2,4,5,7]
%     [1/3,1/2,1,3,4,5]
%     [1/5,1/4,1/3,1,2,3]
%     [1/6,1/5,1/4,1/2,1,2]
%     [1/7,1/7,1/5,1/3,1/2,1]];
% degreesD = Degree(D);
% disp(display(degreesD,U_tru,"D"))
% 
% figure(Name="Множества возраста")
% hold on
% plot(U,truMatrix(degreesA),'r','DisplayName','Молодой');
% plot(U,truMatrix(degreesB),'b','DisplayName','Старый');
% plot(U,truMatrix(degreesC),'g','DisplayName','Очень молодой');
% plot(U,truMatrix(degreesD),'m','DisplayName','Не старый');
% title('Множества возрастов');
% xlabel('Возраст');
% ylabel('Степень принадлежности');
% title('Функции принадлежности для возраста');
% legend show;
% hold off;
% 
% function degrees = Degree(All)
% % геометрическое среднее для каждой строки. Параметр 2 указывает, что среднее нужно вычислять по строкам
%     mean = geomean(All,2);
%     norm = mean/sum(mean);
%     degrees = norm;
% end
% 
% function output = display(degrees,names,setName)
%     outputStr = strcat(setName,' =');
%     for i = 1:length(degrees)-1
%         outputStr = strcat(outputStr,sprintf(" %s/M(%.2f)+", names(i), degrees(i)));
%     end
%     output = strcat(outputStr,sprintf(" %s/M(%.2f)", names(length(degrees)), degrees(length(degrees))));
% end
% 
% function matrixx = truMatrix(degrees)
%     matrixx = [];
%     for i= 1:6
% % degrees(i) извлекает i-й элемент из входного массива degrees.
% % repmat(degrees(i), 1, 20) создает строку, состоящую из 20 повторений значения degrees(i).
% % добавляет к массиву matrixx.
%         matrixx = [matrixx,repmat(degrees(i),1,20)];
%     end
% end


%3
% % Количество экспертов
% num_experts = 5;
% 
% % Инициализация матрицы оценок экспертов
% % Строки - эксперты, столбцы - критерии
% criteria = {'Молодой', 'Старый', 'Очень молодой', 'Не старый'};
% ratings = zeros(num_experts, length(criteria));
% U = 0:120;
% U_tru = ["1-20","21-40","41-60","61-80","81-100","101-120"];
% 
% expert1_mol = [1,0,0,0,0,0];
% expert1_star = [0,0,0,1,1,1];
% expert1_ochen = [1,0,0,0,0,0];
% expert1_not = [1,1,1,0,0,0];
% 
% expert2_mol = [1,1,0,0,0,0];
% expert2_star = [0,0,0,0,1,1];
% expert2_ochen = [1,0,0,0,0,0];
% expert2_not = [1,1,0,0,0,0];
% 
% expert3_mol = [1,1,1,0,0,0];
% expert3_star = [0,0,0,1,1,1];
% expert3_ochen = [1,1,0,0,0,0];
% expert3_not = [1,1,1,1,0,0];
% 
% expert4_mol = [1,1,1,0,0,0];
% expert4_star = [0,0,0,0,0,1];
% expert4_ochen = [1,1,0,0,0,0];
% expert4_not = [1,1,1,1,0,0];
% 
% expert5_mol = [1,1,0,0,0,0];
% expert5_star = [0,0,0,0,0,1];
% expert5_ochen = [1,0,0,0,0,0];
% expert5_not = [1,1,1,1,1,0];
% 
% mol = expert1_mol + expert2_mol + expert3_mol + expert4_mol + expert5_mol;
% star = expert1_star + expert2_star + expert3_star + expert4_star + expert5_star;
% ochen = expert1_ochen + expert2_ochen + expert3_ochen + expert4_ochen + expert5_ochen;
% not = expert1_not + expert2_not + expert3_not + expert4_not + expert5_not;
% 
% gr_mol = mol / num_experts;
% gr_star = star / num_experts;
% gr_ochen = ochen / num_experts;
% gr_not = not / num_experts;
% testf = [20,40,60,80,100,120];
% 
% % Построение графиков
% figure;
% hold on;
% plot(testf, gr_mol, 'r', 'DisplayName', 'Молодой');
% plot(testf, gr_star, 'g', 'DisplayName', 'Старый');
% plot(testf, gr_ochen, 'b', 'DisplayName', 'Очень молодой');
% plot(testf, gr_not, 'm', 'DisplayName', 'Не старый');
% title('Множества возрастов');
% xlabel('Возраст');
% ylabel('Степень принадлежности');
% title('Функции принадлежности для возраста');
% legend show;
% hold off;


%4
% U = ["Дисциплина 1", "Дисциплина 2", "Дисциплина 3", "Дисциплина 4"];
% 
% % Нечёткие множества
% A = [0.8, 0.6, 0.9, 1]; % нравится
% B = [0.3, 0.5, 0.7, 0]; % не понимаю
% C = [0.2, 0.4, 0.6, 0.8]; % не нравится
% D = [0.9, 0.7, 0.5, 0.3]; % хотел бы изучать глубже
% 
% % Разложение по уровням для каждого множества
% levels_A = allLevels(A);
% levels_B = allLevels(B);
% levels_C = allLevels(C);
% levels_D = allLevels(D);
% 
% disp('A (Нравится):');
% for level = keys(levels_A)
%     fprintf('Уровень %.2f: ', level{1});
% % levels_A(level{1}) извлекает значения, связанные с текущим ключом
% % cell2mat() преобразует полученные значения в обычный массив.
%     disp(U(cell2mat(levels_A(level{1}))));
% end
% 
% disp('B (Не понимаю):');
% for level = keys(levels_B)
%     fprintf('Уровень %.2f: ', level{1});
%     disp(U(cell2mat(levels_B(level{1}))));
% end
% 
% disp('C (Не нравится):');
% for level = keys(levels_C)
%     fprintf('Уровень %.2f: ', level{1});
%     disp(U(cell2mat(levels_C(level{1}))));
% end
% 
% disp('D (Хотел бы изучать глубже):');
% for level = keys(levels_D)
%     fprintf('Уровень %.2f: ', level{1});
%     disp(U(cell2mat(levels_D(level{1}))));
% end
% 
% % Функция для разложения по уровням
% function levels = allLevels(degrees)
%     levels = containers.Map('KeyType', 'double', 'ValueType', 'any');
%     unique_levels = unique(degrees(degrees > 0));
% 
%     for i = 1:length(unique_levels)
%         indices = find(degrees >= unique_levels(i)); % Находим индексы
%         levels(unique_levels(i)) = {indices}; % Сохраняем индексы дисциплин
%     end
% end


%5
% U = linspace(0, 10, 400);
% 
% % Функции принадлежности
% ua = zeros(size(U));
% ua((0 <= U) & (U <= 5)) = 1; % ua(x)
% 
% ub = zeros(size(U));
% ub(U >= 5 & U <= 10) = exp(-(U(U >= 5 & U <= 10)-5)/5); % ub(x)
% 
% uc = zeros(size(U));
% a1 = 2; a2 = 5;
% uc(U > a2) = 1;
% uc(U >= a1 & U <= a2) = (U(U >= a1 & U <= a2)-a1)/(a2-a1); % uc(x)
% 
% ud = zeros(size(U));
% ud(U > 0) = 1 ./ (1 + 2 * (U(U > 0).^2)); % ud(x)
% 
% % Построение графиков
% figure;
% hold on;
% plot(U, ua, 'r', 'DisplayName', 'ua(x)');
% plot(U, ub, 'g', 'DisplayName', 'ub(x)');
% plot(U, uc, 'b', 'DisplayName', 'uc(x)');
% plot(U, ud, 'm', 'DisplayName', 'ud(x)');
% xlabel('x');
% ylabel('Степень принадлежности');
% title('Функции принадлежности');
% legend show;
% hold off;
% 
% % Разложение по уровням
% disp('Разложение по уровням для ua:');
% disp('Уровень: a -> x принадлежит [0,5]');
% disp('Уровень: 0 -> все');
% 
% disp('Разложение по уровням для ub:');
% disp('Уровень: a -> x принадлежит [5,5*ln(a)+5]');
% disp('Уровень: 0 -> все');
% 
% disp('Разложение по уровням для uc:');
% disp('Уровень: a -> x принадлежит [a*(a2-a1)+a1,+inf]');
% disp('Уровень: 0 -> все');
% disp('Уровень: 1 -> x > a2');
% 
% disp('Разложение по уровням для ud:');
% disp('Уровень: a -> x принадлежит [0,sqrt((1-a)/2a)');
% 
% % Определение уровней
% levels = [0, 0.2, 0.4, 0.6, 0.8, 1];
% 
% % Разложение по уровням для каждой функции
% disp('Разложение по уровням:');
% for func_idx = {'ua', 'ub', 'uc', 'ud'}
%     fprintf('Разложение для %s:\n', func_idx{1});
%     decomposition = ''; % Инициализация строки для разложение
%     for level = levels
%         % Находим значения x для каждого уровня
%         if strcmp(func_idx{1}, 'ua')
%             values = find(ua >= level);
%         elseif strcmp(func_idx{1}, 'ub')
%             values = find(ub >= level);
%         elseif strcmp(func_idx{1}, 'uc')
%             values = find(uc >= level);
%         elseif strcmp(func_idx{1}, 'ud')
%             values = find(ud >= level);
%         end
%         % Записываем минимальные и максимальные значения x для каждого уровня
%         if ~isempty(values)
%             min_x = min(U(values));
%             max_x = max(U(values));
%             interval_str = sprintf('%.1f[%.2f, %.2f]', level, min_x, max_x);
%             decomposition = [decomposition, interval_str, ' + '];
%         end
%     end
%     fprintf('%s\n', decomposition);
% end


%6
% U = linspace(4, 5000, 5000); % От 4 до 5000
% 
% A = zeros(size(U));
% A(U >= 4 & U < 1000) = (U(U >= 4 & U < 1000)) / 1000;
% A(U >= 1000 & U < 1400) = 1;
% A(U >= 1400 & U < 3000) = (3000 - U(U >= 1400 & U < 3000)) / (3000-1400);
% 
% B = zeros(size(U));
% B(U >= 1000 & U < 4000) = (U(U >= 1000 & U < 4000) - 1000) / (4000 - 1000);
% B(U >= 4000) = 1;
% 
% C = zeros(size(U));
% C(U < 400) = 1;
% C(U >= 400 & U < 1500) = (1500 - U(U >= 400 & U < 1500)) / (1500 - 400);
% 
% % Построение графиков
% figure;
% hold on;
% plot(U, A, 'r', 'DisplayName', 'Средний класс');
% plot(U, B, 'g', 'DisplayName', 'Богатые');
% plot(U, C, 'b', 'DisplayName', 'Небогатые');
% xlabel('Цена');
% ylabel('Степень принадлежности');
% title('Функции принадлежности для цен автомобилей');
% legend show;
% hold off;
% 
% % Разложение по уровням
% disp('Разложение по уровням для A:');
% disp('Уровень: a -> x принадлежит [1000a,1400a-1000]');
% 
% disp('Разложение по уровням для B:');
% disp('Уровень: a -> x принадлежит [1000,4000a+1000]');
% 
% disp('Разложение по уровням для C:');
% disp('Уровень: 1 -> x < 400');
% disp('Уровень: a -> [400,1500-400a]');
% 
% % Определение уровней
% levels = linspace(0, 1, 10);
% disp('Разложение по уровням:');
% for func_idx = {'A', 'B', 'C'}
%     fprintf('Разложение для %s:\n', func_idx{1});
%     decomposition = ''; % Инициализация строки для разложения
%     for level = levels
%         % Находим значения x для каждого уровня
%         if strcmp(func_idx{1}, 'A')
%             values = find(A >= level);
%         elseif strcmp(func_idx{1}, 'B')
%             values = find(B >= level);
%         elseif strcmp(func_idx{1}, 'C')
%             values = find(C >= level);
%         end
% 
%         % Записываем минимальные и максимальные значения x для каждого уровня
%         if ~isempty(values)
%             min_x = min(U(values));
%             max_x = max(U(values));
%             interval_str = sprintf('%.1f[%.2f, %.2f]', level, min_x, max_x);
%             decomposition = [decomposition, interval_str, ' + ']; % Добавляем к строке разложения
%         end
%     end   
%     fprintf('%s\n', decomposition);
% end


%7
% % Определение нечётких множеств
% x_A = [5, 6, 7, 8, 9];
% A = [0.4, 0.7, 1, 0.8, 0.6]; % A
% x_B = [1, 3, 4];
% B = [0.8, 0.8, 0.5]; % B
% 
% % Концентрация и дилатация
% CON_A = A .^ 2; % CON(A)
% DIL_A = sqrt(A); % DIL(A)
% CON_B = B .^ 2; % CON(B)
% DIL_B = sqrt(B); % DIL(B)
% 
% % Вывод результатов
% disp('CON(A):');
% disp(CON_A);
% disp('DIL(A):');
% disp(DIL_A);
% disp('CON(B):');
% disp(CON_B);
% disp('DIL(B):');
% disp(DIL_B);
% 
% % Построение графиков
% figure;
% hold on;
% plot(x_A, A, 'r', 'DisplayName', 'A');
% plot(x_A, CON_A, 'g', 'DisplayName', 'CON(A)');
% plot(x_A, DIL_A, 'b', 'DisplayName', 'DIL(A)');
% xlabel('X');
% ylabel('Степень принадлежности');
% title('Функции принадлежности');
% legend show;
% hold off;
% % Построение графиков
% figure;
% hold on;
% plot(x_B, B, 'r', 'DisplayName', 'B');
% plot(x_B, CON_B, 'g', 'DisplayName', 'CON(B)');
% plot(x_B, DIL_B, 'b', 'DisplayName', 'DIL(B)');
% xlabel('X');
% ylabel('Степень принадлежности');
% title('Функции принадлежности');
% legend show;
% hold off;


%8
% x = linspace(0, 2, 300);
% u = 1/2 - 1/2 * sin(pi/2 * (x - 1));
% u(x > 2) = 0; % u(x)
% 
% % Концентрация и дилатация
% CON_A = u .^ 2; % CON(A)
% DIL_A = sqrt(u); % DIL(A)
% 
% disp('CON(A):');
% disp(CON_A);
% disp('DIL(A):');
% disp(DIL_A);
% 
% % Построение графиков
% figure;
% hold on;
% plot(x, u, 'r', 'DisplayName', 'A');
% plot(x, CON_A, 'g', 'DisplayName', 'CON(A)');
% plot(x, DIL_A, 'b', 'DisplayName', 'DIL(A)');
% xlabel('x');
% ylabel('Степень принадлежности');
% title('Функция принадлежности A');
% legend show;
% hold off;


%9
% U = {'a', 'b', 'c', 'd', 'e', 'f', 'g'};
% A = [0, 0.3, 0.7, 1, 0, 0.2, 0.6];
% B = [0.3, 1, 0.5, 0.8, 1, 0.5, 0.6];
% C = [1, 0.5, 0, 0.2, 0, 0.2, 0.9];
% 
% % Функции принадлежности
% A_mu = containers.Map(U, A);
% B_mu = containers.Map(U, B);
% C_mu = containers.Map(U, C);
% 
% % A Л B
% intersection_AB_mu = intersection(A_mu, B_mu);
% 
% % A U B
% union_AB_mu = union(A_mu, B_mu);
% 
% % notB
% notB_mu = negation(B_mu);
% 
% % A Л notB
% intersection_ANegB_mu = intersection(A_mu, notB_mu);
% 
% % notC
% notC_mu = negation(C_mu);
% 
% % Пересечение (A U notB) Л C
% union_ANegB_mu = union(A_mu, notB_mu);
% intersection_unionANegB_C_mu = intersection(union_ANegB_mu, C_mu);
% 
% % Пересечение not(A U B) Л notC
% intersection_negUnionAB_negC_mu = intersection(notB_mu, notC_mu);
% 
% % Вычисление последнего множества: (0.8A^2 U 0.5B^2 U 0.3C^2)
% A_squared_values = A .^2 * 0.8;
% B_squared_values = B .^2 * 0.5;
% C_squared_values = C .^2 * 0.3;
% 
% union_squared_values = max([A_squared_values; B_squared_values; C_squared_values]);
% 
% % Вычисление последнего множества: 0.6(A * B)) Л C^2
% AB_product_values = zeros(size(A));
% for i=1:length(A)
%     AB_product_values(i) = A(i) * B(i);
% end 
% C_squared_for_intersection_values = C .^2;
% intersection_DIL_AB_C_squared_values = min(0.6*AB_product_values,C_squared_for_intersection_values);
% 
% % Вывод результатов в канонической форме
% disp('A Л B:');
% print_canonical_form(intersection_AB_mu);
% 
% disp('A U B:');
% print_canonical_form(union_AB_mu);
% 
% disp('A Л notB:');
% print_canonical_form(intersection_ANegB_mu);
% 
% disp('(A U notB) Л C:');
% print_canonical_form(intersection_unionANegB_C_mu);
% 
% disp('not(A U B) Л notC:');
% print_canonical_form(intersection_negUnionAB_negC_mu);
% 
% disp('(0.8A^2 U 0.5B^2 U 0.3C^2):');
% fprintf('%.2f/a + %.2f/b + %.2f/c + %.2f/d + %.2f/e + %.2f/f + %.2f/g\n', union_squared_values);
% 
% disp('Пересечение 0.6(A * B) Л C^2:');
% fprintf('%.2f/a + %.2f/b + %.2f/c + %.2f/d + %.2f/e + %.2f/f + %.2f/g\n', intersection_DIL_AB_C_squared_values);
% 
% % Построение графиков
% hold on;
% plot(1:7, A, 'r', 'DisplayName', 'A');
% plot(1:7, B, 'g', 'DisplayName', 'B');
% plot(1:7, C, 'b', 'DisplayName', 'C');
% plot(1:7, cell2mat(intersection_AB_mu.values), '-s', 'DisplayName', 'A Л B');
% plot(1:7, cell2mat(union_AB_mu.values), '-s', 'DisplayName', 'A U B');
% plot(1:7, cell2mat(intersection_ANegB_mu.values), '-s', 'DisplayName', 'A Л notB');
% plot(1:7, cell2mat(intersection_unionANegB_C_mu.values), '-s', 'DisplayName', '(A U notB) Л C');
% plot(1:7, cell2mat(intersection_negUnionAB_negC_mu.values), '-s', 'DisplayName', 'not(A U B) Л notC');
% plot(1:7, union_squared_values, '-s', 'DisplayName', '(0.8A^2 U 0.5B^2 U 0.3C^2)');
% plot(1:7, intersection_DIL_AB_C_squared_values, '-s', 'DisplayName', '0.6(A * B) Л C^2');
% 
% xlabel('Элементы множества');
% ylabel('Степень принадлежности');
% title('Графики функций принадлежности множеств и операций');
% xticks(1:7);
% xticklabels(U);
% legend show;
% grid on;
% hold off;
% 
% % Функция для вывода в канонической форме
% function print_canonical_form(mu)
%     keys_mu = keys(mu);
%     fprintf('Множество:\n');
%     for i=1:length(keys_mu)-1
%         fprintf('%.2f/%s + ', mu(keys_mu{i}), keys_mu{i});
%     end
%     fprintf('%.2f/%s', mu(keys_mu{length(keys_mu)}), keys_mu{length(keys_mu)});
%     fprintf('\n');
% end
% 
% function result = intersection(mu_A, mu_B)
%     keys_A = keys(mu_A);
%     keys_B = keys(mu_B);
%     result = containers.Map(keys_A, zeros(1, length(mu_A)));
%     for i = 1:length(mu_A)
%         result(keys_A{i}) = min(mu_A(keys_A{i}), mu_B(keys_B{i}));
%     end
% end
% 
% function result = union(mu_A, mu_B)
%     keys_A = keys(mu_A);
%     keys_B = keys(mu_B);
%     result = containers.Map(keys_A, zeros(1, length(mu_A)));
%     for i = 1:length(mu_A)
%         result(keys_A{i}) = max(mu_A(keys_A{i}), mu_B(keys_B{i}));
%     end
% end
% 
% function result = negation(mu)
%     keys_M = keys(mu);
%     result = containers.Map(keys_M, zeros(1, length(mu)));
%     for i = 1:length(mu)
%         result(keys_M{i}) = max(1 - mu(keys_M{i}), 0);
%     end
% end


%10
% % Определение диапазона значений
% U = linspace(0, 3, 300); % от 0 до 3
% 
% % Функция принадлежности для A
% A = (U.^2) / 9;
% 
% % Функция принадлежности для B
% B = ((U - 3).^2) / 9;
% 
% % A Л B
% intersection_AB = min(A, B);
% 
% % A U B
% union_AB = max(A, B);
% 
% % notB
% not_B = max(1 - B, 0);
% 
% % A Л notB
% difference_AB = min(A, not_B); % Убедимся в неотрицательности
% 
% % (A U notB)
% union_A_notB = max(A, not_B);
% 
% % (not(A Л B))
% neg_intersection_AB = 1 - intersection_AB;
% 
% % (A Л notA) * (B Л notB)
% product_diff_A_B = zeros(size(A)); % Это всегда будет ноль
% 
% % Построение графиков
% figure;
% hold on;
% % Графики для множеств A и B
% plot(U, A, 'r', 'DisplayName', 'A');
% plot(U, B, 'g', 'DisplayName', 'B');
% 
% % Графики для операций
% plot(U, intersection_AB, 'b', 'DisplayName', 'A Л B');
% plot(U, union_AB, 'r--', 'DisplayName', 'A U B');
% plot(U, difference_AB, 'g--', 'DisplayName', 'A Л notB');
% plot(U, union_A_notB, 'b--', 'DisplayName', 'A U notB');
% plot(U, neg_intersection_AB, 'y--', 'DisplayName', 'not(A Л B)');
% plot(U, product_diff_A_B,'y', 'DisplayName', '(A Л notA) * (B Л notB)'); 
% xlabel('u');
% ylabel('Степень принадлежности');
% title('Функции принадлежности A и B');
% legend show;
% hold off;


%11
% U = {'a', 'b', 'c', 'd', 'e'};
% A = [0.8, 0, 0.6, 0.9, 1]; % A
% 
% % Концентрация и дилатация
% B = A .^ 2; % CON(A)
% C = sqrt(A); % DIL(A)
% 
% disp('CON(A):');
% disp(B);
% disp('DIL(A):');
% disp(C);
% 
% figure;
% hold on;
% plot(1:5, A, 'r', 'DisplayName', 'A');
% plot(1:5, B, 'g', 'DisplayName', 'CON(A)');
% plot(1:5, C, 'b', 'DisplayName', 'DIL(A)');
% xlabel('x');
% xticks(1:5);
% xticklabels(U);
% ylabel('Степень принадлежности');
% title('Функция принадлежности A');
% legend show;
% hold off;


%12
% A = [4, 5, 6]; % A
% mu_A = [1.0, 0.5, 0.2]; % Степени принадлежности
% 
% B = [1, 2, 3, 4, 5]; % B
% mu_B = [0.3, 0.8, 1.0, 0.8, 0.3]; % Степени принадлежности
% 
% % Сложение
% C = [];
% mu_C = [];
% for i = 1:length(A)
%     for j = 1:length(B)
%         sum_value = A(i) + B(j);
%         degree = min(mu_A(i), mu_B(j)); % Используем минимум
%         idx = find(C == sum_value); % Ищем индекс существующего значения
%         if isempty(idx)
%             C(end+1) = sum_value; 
%             mu_C(end+1) = degree;
%         else
%             mu_C(idx) = max(mu_C(idx), degree);
%         end
%     end
% end
% 
% % Умножение
% D = [];
% mu_D = [];
% for i = 1:length(A)
%     for j = 1:length(B)
%         prod_value = A(i) * B(j);
%         degree = min(mu_A(i), mu_B(j)); % Используем минимум
%         idx = find(D == prod_value); % Ищем индекс существующего значения
%         if isempty(idx)
%             D(end+1) = prod_value; 
%             mu_D(end+1) = degree;
%         else
%             mu_D(idx) = max(mu_D(idx), degree);
%         end
%     end
% end
% 
% % Вычитание
% E = [];
% mu_E = [];
% for i = 1:length(A)
%     for j = 1:length(B)
%         if A(i) >= B(j)
%             diff_value = A(i) - B(j);
%             degree = min(mu_A(i), mu_B(j)); % Используем минимум
%             idx = find(E == diff_value); % Ищем индекс существующего значения
%             if isempty(idx)
%                 E(end+1) = diff_value; 
%                 mu_E(end+1) = degree;
%             else
%                 mu_E(idx) = max(mu_E(idx), degree);
%             end
%         end
%     end
% end
% 
% % Деление
% F = [];
% mu_F = [];
% for i = 1:length(A)
%     for j = 1:length(B)
%         if B(j) ~= 0
%             div_value = A(i) / B(j);
%             degree = min(mu_A(i), mu_B(j)); % Используем минимум
%             idx = find(F == div_value); % Ищем индекс существующего значения
%             if isempty(idx)
%                 F(end+1) = div_value; 
%                 mu_F(end+1) = degree;
%             else
%                 mu_F(idx) = max(mu_F(idx), degree);
%             end
%         end
%     end
% end
% 
% % Максимум
% function [G, mu_G] = calcMax(A,B,mu_A,mu_B)
%     G = [];
%     mu_G = [];
%     for i = 1:length(A)
%         for j = 1:length(B)
%             max_value = max(A(i), B(j));
%             degree = min(mu_A(i), mu_B(j)); % Используем максимум
%             idx = find(G == max_value); % Ищем индекс существующего значения
%             if isempty(idx)
%                 G(end+1) = max_value; 
%                 mu_G(end+1) = degree;
%             else
%                 mu_G(idx) = max(mu_G(idx), degree);
%             end
%         end
%     end
% end
% [G,mu_G] = calcMax(A,B,mu_A,mu_B);
% 
% % Минимум
% function [H, mu_H] = calcMin(A,B,mu_A,mu_B)
%     H = [];
%     mu_H = [];
%     for i = 1:length(A)
%         for j = 1:length(B)
%             min_value = min(A(i), B(j));
%             degree = min(mu_A(i), mu_B(j)); % Используем минимум
%             idx = find(H == min_value); % Ищем индекс существующего значения
%             if isempty(idx)
%                 H(end+1) = min_value; 
%                 mu_H(end+1) = degree;
%             else
%                 mu_H(idx) = max(mu_H(idx), degree);
%             end
%         end
%     end
% end
% [H,mu_H] = calcMin(A,B,mu_A,mu_B);
% 
% % Сортировка результатов по величине элемента и удаление дубликатов для всех операций
% [C_sorted, mu_C_sorted] = sortAndRemoveDuplicates(C, mu_C);
% [E_sorted, mu_E_sorted] = sortAndRemoveDuplicates(E, mu_E);
% [D_sorted, mu_D_sorted] = sortAndRemoveDuplicates(D, mu_D);
% [F_sorted, mu_F_sorted] = sortAndRemoveDuplicates(F, mu_F);
% [G_sorted, mu_G_sorted] = sortAndRemoveDuplicates(G, mu_G);
% [H_sorted, mu_H_sorted] = sortAndRemoveDuplicates(H, mu_H);
% 
% [v,m] = calcMax(A,C,mu_A,mu_C);
% disp('Нечёткие числа: ')
% disp(v)
% disp('Дискретные числа: ')
% disp(m)
% 
% figure;
% hold on;
% plot(A, mu_A, 'r', 'DisplayName', 'A (немного больше 3)');
% plot(B, mu_B, 'g', 'DisplayName', 'B (примерно 3)');
% plot(C_sorted, mu_C_sorted, 'b', 'DisplayName', 'C (A + B)');
% plot(D_sorted, mu_D_sorted, 'r--', 'DisplayName', 'D (A * B)');
% plot(E_sorted, mu_E_sorted, 'y', 'DisplayName', 'E (A - B)');
% plot(F_sorted, mu_F_sorted, 'g--', 'DisplayName', 'F (A / B)');
% plot(G_sorted, mu_G_sorted, 'b--', 'DisplayName', 'G (max(A,B))');
% plot(H_sorted, mu_H_sorted, 'y--', 'DisplayName', 'H (min(A,B))');
% xlabel('Значения');
% ylabel('Степень принадлежности');
% title('Графики функций принадлежности для A и B с операциями');
% legend show;
% grid on;
% hold off;
% 
% function [sortedValues, sortedDegrees] = sortAndRemoveDuplicates(values, degrees)
%     [sortedValues, uniqueIdx] = unique(values);
%     sortedDegrees= zeros(size(sortedValues));
%     for i=1:length(uniqueIdx)
%         sortedDegrees(i)=max(degrees(values==sortedValues(i)));
%     end  
% end



%Individual dz1
% criteria = {'Качества зерна', 'Цена зерна', 'Транспортные расходы', 'Форм оплаты', 'Минимальная партия', 'Надёжность поставки'};
% ranks = [1, 2, 6, 4, 3, 5];
% 
% % Количество критериев
% n = length(ranks);
% 
% % Создание матрицы парных сравнений
% comparisonMatrix = zeros(n,n);
% 
% for i = 1:n
%     for j = 1:n
%         if ranks(i)>=ranks(j)
%             comparisonMatrix(i, j) = 1; % Элемент на главной диагонали
%         else
%             comparisonMatrix(i, j) = 0;
%         end
%     end
% end
% 
% % Нормализация матрицы
% normalizedMatrix = comparisonMatrix ./ sum(comparisonMatrix, 2);
% 
% % Инициализация векторов весов
% weights = mean(normalizedMatrix, 2);
% 
% % Итерации для вычисления итерированной силы критерия
% for iter = 1:3
%     normalizedMatrix = comparisonMatrix * weights; % Умножение матрицы на вектор весов
%     weights = normalizedMatrix / sum(normalizedMatrix); % Нормализация
% end
% 
% % Вывод результатов
% disp('Матрица парных сравнений:');
% disp(comparisonMatrix);
% disp('Итерированная сила критериев:');
% disp(weights);
% disp('Значимость критериев:');
% for i = 1:n
%     fprintf('%s: %.4f\n', criteria{i}, weights(i));
% end


%Individual dz2
% rangMatrix = transpose([
%     calculateRanks([0.45, 0.30, 0.15, 0.10])
%     calculateRanks([0.2, 0.3, 0.35, 0.15])
%     calculateRanks([0.15, 0.30, 0.15, 0.40])
%     calculateRanks([0.30, 0.30, 0.25, 0.15])
%     ]);
% rangsSum = sum(rangMatrix,2);
% meanRang = sum(rangsSum)/length(rangsSum);
% dArray = rangsSum - meanRang;
% 
% tAr = [calcT(rangMatrix(1:end,1))
%        calcT(rangMatrix(1:end,2))
%        calcT(rangMatrix(1:end,3))
%        calcT(rangMatrix(1:end,4))];
% w = calcW(dArray,tAr,4,4);
% 
% rangsInvSum = rangsSum .^-1;
% rangsInvSumSum = sum(rangsInvSum);
% degrees = rangsInvSum ./ rangsInvSumSum;
% 
% disp('Степени согласованности мнений экспертов:');
% disp(degrees);
% 
% 
% function ranks = calculateRanks(values)
%     if isempty(values)
%         ranks = [];
%         return;
%     end
%     n = length(values);
%     ranks = zeros(size(values));
%     [sortedValues, sortedIndices] = sort(values,"descend");
%     currentRank = 1;
%     i = 1; 
%     while i <= n
%         % Найти количество одинаковых значений
%         count = length(sortedValues(sortedValues==sortedValues(i)));
%         if count > 1
%             su = sum(find(sortedValues == sortedValues(i)));
%             % Если есть одинаковые значения, присваиваем средний ранг
%             averageRank = su/count; % Средний ранг для одинаковых значений
%             % Присвоение среднего ранга всем одинаковым элементам
%             for j = 0:(count - 1)
%                 ranks(sortedIndices(i + j)) = averageRank;
%             end
%             % Увеличиваем текущий ранг до ближайшего целого числа в большую сторону после среднего
%             currentRank = ceil(averageRank);
%         else
%             % Если уникальное значение, просто присваиваем текущий ранг
%             ranks(sortedIndices(i)) = currentRank;
%             currentRank = currentRank + 1;
%         end
%         i = i + count;
%         % Если есть одинаковые значения, следующий ранг устанавливаем на ближайшее целое число в большую сторону.
%         if count > 1
%             currentRank = ceil(currentRank); 
%         end
%     end
% end
% 
% function t = calcT(ranks)
%     uniqueRanks = unique(ranks);
%     t = 0;
%     for j=1:length(uniqueRanks)
%         countOfEqRanks = length(find(uniqueRanks(j)==ranks));
%         t = t + countOfEqRanks^3 - countOfEqRanks;
%     end
% end
% 
% function w = calcW(dArray,tAr,exCount,ObCount) 
%     w = 0;
%     dSq = dArray .^2;
%     w = 12 * sum(dSq)/(exCount^2*(ObCount^3 - ObCount) - exCount * sum(tAr));
% end