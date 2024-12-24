%1
% x = 1:0.1:9;
% c = 5;
% sigma = 1;
% 
% gauss_function = exp(-((x - c).^2) / (2 * sigma^2));
% 
% figure;
% plot(x, gauss_function, 'LineWidth', 2);
% grid on;
% xlabel('x');
% ylabel('f(x)');


%2
% x = 1:0.1:13;
% c = 7;
% sigma = 1.3;
% x1 = exp(-((x - c).^2) / (2 * sigma^2));
% x2 = exp(-((x - c).^2) / (2 * sigma^2));
% 
% figure;
% subplot(2,1,1);
% plot(x,x1);
% xlabel('x');
% ylabel('y');
% title('Гауссовые функции принадлежности для x1');
% 
% subplot(2,1,2);
% plot(x,x2);
% xlabel("x");
% ylabel("y");
% title('Гауссовые функции принадлежности для x2');
% 
% implication = zeros(length(x), length(x));
% 
% % Вычисление нечёткой импликации
% for i = 1:length(x)
%     for j = 1:length(x)
%         implication(i,j) = min(x1(i), x2(j));
%     end
% end
% 
% % Построение 3D графика
% figure;
% surf(x, x, implication);
% xlabel('x1');
% ylabel('x2');
% zlabel('y');
% title('Нечёткая импликация для всех комбинаций x1 и x2');


%3
% x = 1:0.1:13;
% c = 7;
% sigma = 1.3;
% 
% x1_membership = exp(-((x - c).^2) / (2 * sigma^2));
% x2_membership = x1_membership;
% 
% %Нечёткая импликация для фиксированного u = 1
% u = 1; 
% implication = zeros(1, length(x));
% 
% for i = 1:length(x)
%     implication(i) = min(u, x2_membership(i));
% end
% 
% %Дефаззификация методом центра тяжести
% numerator = sum(x .* implication);
% denominator = sum(implication);
% 
% if denominator == 0
%     cog = NaN;
%     disp('Импликация равна нулю, невозможно вычислить COG');
% else
%     % Центр тяжести
%     cog = numerator / denominator;
%     disp(['COG (Центр тяжести): ', num2str(cog)]);
% end
% 
% %Построение графика импликации
% figure;
% plot(x, implication);
% xlabel('x');
% ylabel('Импликация');
% title('Нечёткая импликация для u = 1');
% line([cog cog], [0 max(implication)], 'Color', 'red', 'LineStyle', '--');
% legend('Импликация', 'Центр тяжести');


%4
fuzzy

