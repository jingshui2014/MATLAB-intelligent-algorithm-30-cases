%% ��ջ���
clc
clear

%% ������ʼ��
% ����Ⱥ�㷨�е���������
c1 = 1.49445;
c2 = 1.49445;

maxgen=300;   % ��������  
sizepop=20;   % ��Ⱥ��ģ

% ������ٶ������Сֵ
popmax=2;
popmin=-2;
Vmax=0.5;
Vmin=-0.5;

%% ������ʼ���Ӻ��ٶ�
for i=1:sizepop
    
    %�������һ����Ⱥ
    pop(i,:)=2*rands(1,2);    %��ʼ��Ⱥ
    V(i,:)=0.5*rands(1,2);  %��ʼ���ٶ�
    
    %������Ӧ��
    fitness(i)=fun(pop(i,:));   %Ⱦɫ�����Ӧ��
end

%% ���弫ֵ��Ⱥ�弫ֵ
[bestfitness bestindex]=max(fitness);
zbest=pop(bestindex,:);   % Ⱥ�弫ֵλ��
gbest=pop;    % ���弫ֵλ��
fitnessgbest=fitness;   % ���弫ֵ��Ӧ��ֵ
fitnesszbest=bestfitness;   % Ⱥ�弫ֵ��Ӧ��ֵ

%% ����Ѱ��
for i=1:maxgen
    
    for j=1:sizepop
        
        % �ٶȸ���
        V(j,:) = V(j,:) + c1*rand*(gbest(j,:) - pop(j,:)) + c2*rand*(zbest - pop(j,:));
        V(j,find(V(j,:)>Vmax))=Vmax;
        V(j,find(V(j,:)<Vmin))=Vmin;
        
        % ���Ӹ���
        pop(j,:)=pop(j,:)+V(j,:);
        pop(j,find(pop(j,:)>popmax))=popmax;
        pop(j,find(pop(j,:)<popmin))=popmin;
        
        % ��������Ӧ��ֵ
        fitness(j)=fun(pop(j,:)); 
   
    end
    
    % ���弫ֵ��Ⱥ�弫ֵ����
    for j=1:sizepop
        
        % ���弫ֵ����
        if fitness(j) > fitnessgbest(j)
            gbest(j,:) = pop(j,:);
            fitnessgbest(j) = fitness(j);
        end
        
        % Ⱥ�弫ֵ����
        if fitness(j) > fitnesszbest
            zbest = pop(j,:);
            fitnesszbest = fitness(j);
        end
    end 
    
    % ��¼ÿ������ֵ
    yy(i)=fitnesszbest;    
        
end
%% �������
plot(yy) % ����ÿ�����Ÿ�����Ӧ��ֵ
title('���Ÿ�����Ӧ��','fontsize',12);
xlabel('��������','fontsize',12);ylabel('��Ӧ��','fontsize',12);

