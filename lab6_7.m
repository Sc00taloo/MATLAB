%1
% names = 1:6;
% Power = [
%     [1,3,3,1/2,2,1]
%     [1/3,1,1,1/3,1/2,1/3]
%     [1/3,1,1,1/3,1/2,1/3]
%     [2,3,3,1,3,2]
%     [1/2,2,2,1/3,1,1/3]
%     [1,3,3,1/2,1/3,1]];
% disp(checkCon(Power,1.24));
% degreesPower = calcDegrees(Power);
% disp(displayNewFuzzySet(degreesPower,names,"Мощность"))
% 
% names = 1:6;
% Moment = [
%     [1,1/3,1/2,1,1/2,2]
%     [3,1,2,3,2,4]
%     [2,1/2,1,2,1,3]
%     [1,1/3,1/2,1,1/2,2]
%     [2,1/2,1,2,1,3]
%     [1/2,1/4,1/3,1/2,1/3,1]];
% disp(checkCon(Moment,1.24));
% degreesMoment = calcDegrees(Moment);
% disp(displayNewFuzzySet(degreesMoment,names,"Крутящий момент"))
% 
% names = 1:6;
% Weight = [
%     [1,3,2,1/3,2,1/5]
%     [1/3,1,1/2,1/4,1/2,1/6]
%     [1/2,2,1,1/2,1,1/4]
%     [3,4,2,1,3,1/2]
%     [1/2,2,1,1/3,1,1/4]
%     [5,6,4,2,4,1]];
% disp(checkCon(Weight,1.24));
% degreesWeight = calcDegrees(Weight);
% disp(displayNewFuzzySet(degreesWeight,names,"Масса"))
% 
% names = ["Мощность","Крутящий момент","Масса"];
% Prop = [
%     [1,2,3]
%     [1/2,1,2]
%     [1/3,1/2,1]];
% disp(checkCon(Prop,0.58));
% degreesProps = calcDegrees(Prop);
% disp(displayNewFuzzySetStr(degreesProps,names,"Атрибуты"))
% Финальное вычисление
% result = cat(2,degreesPower,degreesMoment,degreesWeight) * degreesProps;
% names = 1:6;
% disp(displayNewFuzzySet(result,names,"Результаты"));


%2
% names = 1:6;
% Profit = [
%     [1,3,1/2,2,4,1/4]
%     [1/3,1,1/3,1/2,3,1/4]
%     [2,3,1,2,4,1/3]
%     [1/2,2,1/2,1,3,1/3]
%     [1/4,1/3,1/4,1/3,1,1/5]
%     [4,4,3,3,5,1]];
% disp(checkCon(Profit,1.24));
% degreesProfit = calcDegrees(Profit);
% disp(displayNewFuzzySet(degreesProfit,names,"Прибыль"))
% 
% names = 1:6;
% Cost = [
%     [1,1/6,2,1/3,1/8,1/3]
%     [6,1,6,3,1/3,3]
%     [1/2,1/6,1,1/3,1/6,1/3]
%     [3,1/3,3,1,1/4,1]
%     [8,3,6,4,1,5]
%     [3,1/3,3,1,1/5,1]];
% disp(checkCon(Cost,1.24));
% degreesCost = calcDegrees(Cost);
% disp(displayNewFuzzySet(degreesCost,names,"Себестоимость продукции"))
% 
% names = 1:6;
% Income = [
%     [1,1/2,1/7,1/4,1,1/5]
%     [2,1,1/5,1/3,3,1/4]
%     [7,5,1,4,6,3]
%     [4,3,1/4,1,4,1/2]
%     [1,1/3,1/6,1/4,1,1/5]
%     [5,4,1/3,2,5,1]];
% disp(checkCon(Income,1.24));
% degreesIn = calcDegrees(Income);
% disp(displayNewFuzzySet(degreesIn,names,"Доходы"))
% 
% names = ["Прибыль","Себестоимость продукции","Доходы"];
% pairwiseComparisonsProp = [
%     [1,2,3]
%     [1/2,1,2]
%     [1/3,1/2,1]];
% disp(checkCon(pairwiseComparisonsProp,0.58));
% degreesProps = calcDegrees(pairwiseComparisonsProp);
% disp(displayNewFuzzySetStr(degreesProps,names,"Атрибуты"))
% % Финальное вычисление
% result = cat(2,degreesProfit,degreesCost,degreesIn) * degreesProps;
% names = 1:6;
% disp(displayNewFuzzySet(result,names,"Результаты"));


%3
% names = 1:6;
% Power = [
%     [1,3,1/2,2,4,1/4]
%     [1/3,1,1/3,1/2,3,1/4]
%     [2,3,1,2,4,1/3]
%     [1/2,2,1/2,1,3,1/3]
%     [1/4,1/3,1/4,1/3,1,1/5]
%     [4,4,3,3,5,1]];
% disp(checkCon(Power,1.24));
% degreesPower = calcDegrees(Power);
% disp(displayNewFuzzySet(degreesPower,names,"Мощность"))
% 
% names = 1:6;
% Moment = [
%     [1,3,1/3,2,5,2]
%     [1/3,1,1/4,1/3,3,1/4]
%     [3,4,1,3,6,3]
%     [1/2,3,1/3,1,4,1]
%     [1/5, 1/3,1/6,1/4,1,1/5]
%     [1/2,4,1/3,1,5,1]];
% disp(checkCon(Moment,1.24));
% degreesMoment = calcDegrees(Moment);
% disp(displayNewFuzzySet(degreesMoment,names,"Крутящий момент"))
% 
% names = 1:6;
% Weight = [
%     [1,3,6,4,1,5]
%     [1/3,1,5,3,1/2,4]
%     [1/6,1/5,1,1/4,1/6,1/3]
%     [1/4,1/3,4,1,1/4,1/2]
%     [1,2,6,4,1,5]
%     [1/5,1/4,3,2,1/5,1]];
% disp(checkCon(Weight,1.24));
% degreesWeight = calcDegrees(Weight);
% disp(displayNewFuzzySet(degreesWeight,names,"Масса"));
% 
% names = ["Мощность","Крутящий момент","Масса"];
% Prop = [
%     [1,2,3]
%     [1/2,1,2]
%     [1/3,1/2,1]];
% disp(checkCon(Prop,0.58));
% degreesProps = calcDegrees(Prop);
% disp(displayNewFuzzySetStr(degreesProps,names,"Атрибуты"))
% % Финальное вычисление
% result = cat(2,degreesPower,degreesMoment,degreesWeight) * degreesProps;
% names = 1:6;
% disp(displayNewFuzzySet(result,names,"Результаты"));

%проверка согласованности
function con = checkCon(pairwiseComparisons,os)
    pairGeomean = geomean(pairwiseComparisons,2);
    pairGeomeanNorm = pairGeomean/sum(pairGeomean);
    pairColumnSum = sum(pairwiseComparisons);
    labmdaMax = dot(pairGeomeanNorm,pairColumnSum);
    is = (labmdaMax - length(pairwiseComparisons))/(length(pairwiseComparisons)-1);
    con = is/os < 0.1;
end

function degrees = calcDegrees(pairwiseComparisons)
    pairGeomean = geomean(pairwiseComparisons,2);
    pairGeomeanNorm = pairGeomean/sum(pairGeomean);
    degrees = pairGeomeanNorm;
end

function outputString = displayNewFuzzySet(degrees,names,setName)
    outputString = sprintf("%s\n",setName);
    % Форматируем строки для каждого элемента и конкатенируем их
    for i = 1:length(degrees)
        outputString = strcat(outputString,sprintf(" %d | %.2f\n", names(i), degrees(i)));
    end
end

function outputString = displayNewFuzzySetStr(degrees,names,setName)
    outputString = sprintf("%s\n",setName);
    % Форматируем строки для каждого элемента и конкатенируем их
    for i = 1:length(degrees)
        outputString = strcat(outputString,sprintf(" %s | %.2f\n", names(i), degrees(i)));
    end
end


%4
names = ["Седан", 
    "Кроссовер", 
    "Электромобиль", 
    "Компактный седан", 
    "Внедорожник",
    "Экономический седан",];
%по цене
pairwiseComparisonsCost = [
    [1,   1/3, 1/5,   1/7,  1/4, 1/8],
    [3,   1,   1/3,   1/5,    1/2,   1/7],
    [5, 3, 1,   1/3,  1/2, 1/6],
    [7,   5, 3,   1,    3, 1/3],
    [4,   2, 2,   1/3,    1, 1/3],
    [8,   7,   6,   3,    3, 1],
];
disp(checkCon(pairwiseComparisonsCost,1.24));
degreesCost = calcDegrees(pairwiseComparisonsCost);
disp(displayNewFuzzySetStr(degreesCost,names,"Цена"))

% По комфорту
pairwiseComparisonsDesign = [
    [1,   3,   1/2,   4,   3, 6],
    [1/3, 1,   1/4,   2,   3,   5],
    [2, 4, 1,   5,   6,   7],
    [1/4,   1/2,   1/5,   1,    2,   3],
    [1/3,   1/3, 1/6, 1/2,   1,   2],
    [1/6, 1/5, 1/7, 1/3,   1/2, 1],
];
disp(checkCon(pairwiseComparisonsDesign,1.24));
degreesDesign = calcDegrees(pairwiseComparisonsDesign);
disp(displayNewFuzzySetStr(degreesDesign,names,"Комфорт"));

% По экологичности
pairwiseComparisonsDurability = [
    [1,   1/2,   1/5, 3,   2, 4],
    [2, 1,   1/4, 4, 3, 5],
    [5,   4,   1,   6,   5,   7],
    [1/3,   1/4,   1/6, 1,   1/2, 2],
    [1/2,   1/3,   1/5,   2,   1,   3],
    [1/4,   1/5,   1/7,   1/2,   1/3,   1],
];
disp(checkCon(pairwiseComparisonsDurability,1.24));
degreesDurability = calcDegrees(pairwiseComparisonsDurability);
disp(displayNewFuzzySetStr(degreesDurability,names,"Экологичность"))

% По расходу топлива
pairwiseComparisonsWeight = [
    [1,   3, 1/4,   2, 3,   4],
    [1/3,   1,   1/5,   1,   2,   3],
    [4, 5, 1,   6, 5, 7],
    [1/2,   1, 1/6,   1,   2,   3],
    [1/3, 1/2, 1/5,   1/2, 1,   2],
    [1/4,   1/3,   1/7,   1/3,   1/2,   1],
];
disp(checkCon(pairwiseComparisonsWeight,1.24));
degreesWeight = calcDegrees(pairwiseComparisonsWeight);
disp(displayNewFuzzySetStr(degreesWeight,names,"Расход топлива"));

% По безопасности
pairwiseComparisonsCorrosion = [
    [1,   4,   3,   6,   4,   7],
    [1/4, 1,   1/2, 2,   3, 5],
    [1/3,   2,   1,   5,   4,   6],
    [1/6, 1/2,   1/5, 1,   2, 3],
    [1/4,   1/3,   1/4,   1/2,   1,   2],
    [1/7, 1/5, 1/6, 1/3, 1/2, 1],
];
disp(checkCon(pairwiseComparisonsCorrosion,1.24));
degreesCorrosion = calcDegrees(pairwiseComparisonsCorrosion);
disp(displayNewFuzzySetStr(degreesCorrosion,names,"Безопасность"));

% По надёжности
pairwiseComparisonsAddcost = [
    [1,   3, 2,   4,  3, 6],
    [1/3,   1,   1/2,   2,    3,   4],
    [1/2, 2, 1,   3,  4, 5],
    [1/4,   1/2, 1/3,   1,    2, 3],
    [1/3,   1/3, 1/4,   1/2,    1, 2],
    [1/6,   1/4,   1/5,   1/3,    1/2, 1],
];
disp(checkCon(pairwiseComparisonsAddcost,1.24));
degreesAddcost = calcDegrees(pairwiseComparisonsAddcost);
disp(displayNewFuzzySetStr(degreesAddcost,names,"Надёжность"));

% Сравнение самих критериев
% По весу
names = ["Цена","Комфорт","Экологичность","Расход топлива","Безопасность","Надёжность"];
pairwiseComparisonsProp = [
    [1,     3,   4,    7,    2,    5],
    [1/3,   1,   3,  9,  2,  3],
    [1/4,   1/3,   1,      5,  1/3,    6],
    [1/7,   1/9,   1/5,    1,  1/5,  1/3],
    [1/2,   1/2,   3,    5,  1,    7],
    [1/5,   1/3,   1/6,    3,  1/7,  1],
];
disp(checkCon(pairwiseComparisonsProp,1.24));
degreesProps = calcDegrees(pairwiseComparisonsProp);
disp(displayNewFuzzySetStr(degreesProps,names,"Итог"))
% Финальное вычисление
result = cat(2,degreesCost,degreesDesign,degreesDurability,degreesWeight,degreesCorrosion,degreesAddcost) * degreesProps;
names = ["Седан", 
    "Кроссовер", 
    "Электромобиль", 
    "Компактный седан", 
    "Внедорожник",
    "Экономический седан",];
disp(displayNewFuzzySetStr(result,names,"Авто"));