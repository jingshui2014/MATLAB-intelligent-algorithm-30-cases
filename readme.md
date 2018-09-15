阅读本仓库代码，请参考《MATLAB智能算法30个案例分析》。

*遗传算法需要工具箱 gatbx.*
*支持向量机需要工具箱 libsvm.*
### chapter1 谢菲尔德大学的MATLAB遗传算法工具箱
- example1.m 一元函数优化

- example2.m 多元函数优化

### chapter2 基于遗传算法和非线性规划的函数寻优方法
经典非线性规划算法大多采用梯度下降的方法求解，局部搜索能力较强，但是全局搜索能力较弱。

遗传算法采用选择、交叉和变异算子进行搜索，全局搜索能力较强，但是局部搜索能力较弱，一般只能得到问题的次优解，而不是最优解。

因此本案例结合了两种算法的优点，一方面采用遗传算法进行全局搜索，一方面采用非线性规划算法进行局部搜索，以得到问题的全局最优解。

### chapter3 基于遗传算法的BP神经网络优化算法
BP神经网络虽然是人工神经网络中应用最广泛的算法，但是也存在一些缺陷，例如学习收敛速度太慢、不能保证收敛到全局最小点、网络结构不易确定。网络结构、初始连接权值和阈值的选择对网络训练的影响很大，但是又无法准确获得，针对这些特点可以采用遗传算法对神经网络进行优化。

data.mat中，P是训练集输入、T是训练集输出、P_test是测试集输入、T_test是测试集输出。

该BP神经网络训练时间可能较长。

### chapter4 基于遗传算法的TSP算法
TSP 是典型的 NP 完全问题。

该算法的局限性：问题规模较小时，得到的一般都是最优解；当规模比较大时，一般只能得到近似解。这时可以通过增加种群大小和增加最大遗传代数使得优化值更接近最优解。

### chapter5 基于遗传算法的LQR控制器优化设计

### chapter6 遗传算法工具箱详解及应用

### chapter7 多种群遗传算法的函数优化算法
遗传算法的优化不依赖于梯度，具有很强的鲁棒性和全局搜索能力，但也存在**早熟收敛问题**等弊端。

未成熟收敛是指群体中的所有个体都趋于同一状态而停止进化。**多种群遗传算法MPGA**是一种解决方案，与标准遗传算法SGA相比，引入了如下概念。

- 突破SGA依靠单个群体进行遗传进化的框架，引入多个种群同时进行优化搜索；不同的种群赋以不同的控制参数，实现不同的搜索目的。

- 各个种群之间通过移民算子进行联系，实现多种群的协同进化；最优解的获取是多个种群协同进化的综合结果。

- 通过人工选择算子保存各种群每个进化代中的最优个体，并作为判断算法收敛的依据。

### chapter8 基于量子遗传算法的函数寻优方法
量子遗传算法QGA是量子计算与遗传算法相结合的产物，是一种新发展起来的概率进化算法。

量子计算中采用量子态作为基本的信息单元，利用量子态的叠加、纠缠和干涉等特性，通过量子并行计算可以解决经典计算中的NP问题。量子遗传算法是基于量子计算原理的一种遗传算法。将量子的态矢量表达引入遗传编码，利用量子逻辑门实现染色体的演化，实现了比常规遗传算法更好的效果。

### chapter9 基于遗传算法的多目标优化算法
多目标优化算法的目的是要寻找**Pareto最优解**。Pareto最优是一种资源分配的理想状态，在此情况下不可能在不使一个目标受损的情况下提升某些目标。

### chapter10 基于粒子群算法的多目标搜索算法
实际工程优化问题中，多数问题是多目标优化问题，其显著特点是优化各个目标使其同时达到综合的最优值。然而，多目标优化问题的各个目标之间往往是相互冲突的。

多目标优化问题中最重要的概念是**非劣解**和**非劣解集**。在多目标优化问题的可行域中存在一个问题解，若不存在另一个可行解，使得一个解中的目标全部劣于该解，则该解称为多目标优化问题的非劣解。所有非劣解的集合叫做非劣解集。

实际问题中，过多的非劣解无法直接应用，决策者只能选择其中最满意的一个非劣解作为最终解。选择非劣解的方法：

- 生成法，包括加权法、约束法、二者的混合法以及多目标遗传算法，即先求出大量的非劣解，构成非劣解的一个子集，然后按照决策者意图找出最终解。
- 交互法，主要为求解线性约束多目标优化的Geoffrion法，通过分析者与决策者对话的方式，逐步求出最终解。
- 事先要求决策者提供目标之间的相对重要程度，算法以此为依据，将多目标问题转化为单目标问题进行求解。

本案例采用多目标粒子群算法求解多目标背包问题。

### chapter11 基于多层编码遗传算法的车间调度算法
遗传算法中的每个染色体表示问题中的一个潜在最优解，对于简单问题，染色体可方便地表达问题的潜在解，而对于较复杂的优化问题，一个染色体难以准确表达问题的解。多层编码遗传算法把个体编码分为多层，每层编码均表示不同的含义，多层编码共同完整表达了问题的解，从而用一个染色体准确表达出了复杂问题的解。多层编码遗传算法扩展了遗传算法的使用领域，使得遗传算法可以方便用于复杂问题的求解。

### chapter12 免疫优化算法在物流配送中心选址中的应用
一般地，物流中心选址模型是非凸和非光滑的带有复杂约束的非线性规划模型，属NP-hard问题。

免疫算法受生物免疫系统启发，它利用免疫系统的多样性产生和维持机制来保持群体的多样性，克服了一般寻优过程尤其是多峰函数寻优过程中难处理的“早熟”问题，最终求得全局最优解。

免疫算法和遗传算法都采用群体搜索策略，并强调群体中个体间的信息交换。二者之间的区别主要表现为对个体的评价、选择及产生的方式不同。遗传算法中个体的评价是通过计算个体适应度得到的，算法选择父代个体的唯一标准是个体适应度；而免疫算法对个体的评价则是通过计算亲和度得到的，个体的选择也是以亲和度为基础进行的。个体的亲和度包括抗体-抗原之间的亲和度（匹配程度）和抗体-抗体之间的亲和度（相似程度）。它反映了真实的免疫系统的多样性，因此免疫算法对个体的评价更加全面，其个体选择方式也更为合理。

此外，遗传算法通过交叉、变异等遗传操作产生新个体，而在免疫算法中，虽然交叉、变异等固有的遗传操作也被广泛应用，但是新抗体的产生还可以借助克隆选择、免疫记忆、疫苗接种等遗传算法中所欠缺的机理，同时免疫算法中还对抗体的产生进行促进或者抑制，体现了免疫反应的自我调节功能，保持了个体的多样性。

### chapter13 粒子群算法的寻优算法
粒子群算法PSO是计算智能领域，除了蚁群算法、鱼群算法之外的一种群体智能的优化算法。PSO算法源于对鸟类捕食行为的研究，鸟类捕食时，找到食物最简单有效的策略就是搜寻当前距离食物最近的鸟的周围区域。

PSO算法是从这种生物种群行为特征中得到启发并用于求解优化问题的，算法中每个粒子都代表问题的一个潜在解，每个粒子对应一个由适应度函数决定的适应度值。粒子的速度决定了粒子移动的方向和距离，速度随自身及其他粒子的移动经验进行动态调整，从而实现个体在可解空间中的寻优。

PSO算法首先在可行解空间中初始化一群粒子，每个粒子都代表极值优化问题的一个潜在最优解，用位置、速度和适应度值三项指标表示该粒子特征，适应度值由适应度函数计算得到，其值的好坏表示粒子的优劣。粒子在解空间中运动，通过跟踪个体极值Pbest和群体极值Gbest更新个体位置。个体极值Pbest是指个体所经历位置中计算得到的适应度值最优位置，群体极值Gbest是指种群中的所有粒子搜索到的适应度最优位置。粒子每更新一次位置，就计算一次适应度值，并且通过比较新粒子的适应度值和个体极值、群体极值的适应度值更新个体极值Pbest和群体极值Gbest位置。

### chapter14 基于粒子群算法的PID控制器优化设计

### chapter15 基于混合粒子群算法的TSP搜索算法
标准粒子群算法通过追随个体极值和群体极值完成极值寻优，虽然操作简单，且能够快速收敛，但是随着迭代次数的不断增加，在种群收敛集中的同时，各粒子也越来越相似，可能在局部最优解周边无法跳出。

混合粒子群算法摒弃了传统粒子群算法中的通过跟踪极值来更新粒子位置的方法，引入了遗传算法中的交叉和变异操作，通过粒子同个体极值和群体极值的交叉以及粒子自身变异的方式来搜索最优解。

### chapter16 基于动态粒子群算法的动态环境寻优算法
基本粒子群算法首先是在解空间中随机初始化所有粒子，每个粒子位置即代表问题的一个潜在解，在搜索过程中，采用适应度函数对每个粒子位置进行评价，适应度值好的粒子位置将被记忆，每个粒子通过跟踪自身记忆的个体最优位置和种群记忆的全局最优位置，逐渐逼近更优值位置。但是在动态环境下，迭代中记忆的个体最优位置和全局最优位置对应的适应度值是变化的，使得粒子陷入对先前环境的寻优，因此基本粒子群算法难以在动态环境下完成有效的寻优。

为跟踪动态极值，需要对基本粒子群算法进行改进。

- 探测机制，使种群或粒子获得感知外部环境变化的能力。
- 响应机制，探测到环境的变化后，采取某种响应方式对种群进行更新，以适应动态环境。

基于敏感粒子的动态粒子群算法是一种典型的**动态粒子群算法**，它在算法初始化时随机生成敏感粒子，每次迭代中计算敏感粒子适应度值，当发现适应度值变化时，认为环境已发生变化。响应的方式是按照一定比例重新初始化粒子位置和粒子速度。

**动态环境**是指最优值和最优位置随时间变化的环境，动态环境可用来测试算法的动态响应能力。

### chapter17 基于PSO工具箱的函数寻优算法

### chapter18 基于鱼群算法的函数寻优算法
鱼群算法参考了鱼类觅食、聚群、追尾、随机等典型行为。

算法的优点：

- 具有克服局部极值、取得全局极值的能力。
- 算法中仅使用目标问题的函数值，对搜索空间有一定自适应能力。
- 具有对初值与参数选择不敏感、鲁棒性强、简单易实现、收敛速度快和使用灵活等特点。可以解决经典方法不能求解的带有绝对值且不可导二元函数的极值问题。

算法不足：

- 视野与收敛速度的矛盾。
- 初期收敛较快，但后期往往收敛较慢，或者无法达到要求的精度。

### chapter19 基于模拟退火算法的TSP算法
模拟退火的出发点是基于物理中固体物质的退火过程与一般的组合优化问题之间的相似性。模拟退火法是一种通用的优化算法。退火过程：
- 加温过程。增强粒子的热运动，使其偏离平衡位置。当温度足够高时，固体将熔为液体，从而消除系统原先存在的非均匀状态。
- 等温过程。对于与周围环境交换热量而温度不变的封闭系统，系统状态的自发变化总是朝自由能减少的方向进行，当自由能达到最小时，系统达到平衡状态。
- 冷却过程。使粒子热运动减弱，系统能量下降，得到晶体结构。

模拟退火算法为求解传统方法难处理的TSP问题提供了一个有效的途径和通用框架，并逐渐发展成一种迭代自适应启发式概率性搜索算法。模拟退火算法可以用以求解不同的非线性问题，对不可微甚至不连续的函数优化，能以较大概率求得全局优化解。该算法还具有较强的鲁棒性、全局收敛性、隐含并行性及广泛的适应性，并且能处理不同类型的优化设计变量（离散型、连续型和混合型），不需要任何的辅助信息，对目标函数和约束函数没有任何要求。

### chapter20 基于遗传模拟退火算法的聚类算法
模糊聚类是目前知识发现以及模式识别等诸多领域中的重要研究分支之一。模糊C-均值聚类(FCM)是目前比较流行的一种聚类方法。该方法使用了在欧几里得空间确定数据点的几何贴近度的概念，它将这些数据分配到不同的聚类，然后确定这些聚类之间的距离。

FCM为其他模糊聚类分析方法奠定了基础，应用也最广泛；但从本质上，FCM算法是一种局部搜索优化算法，如果初始值选择不当，就会收敛到局部极小点上。

### chapter21 模拟退火算法工具箱及应用

### chapter22 蚁群算法的优化计算——TSP优化
蚂蚁在寻找食物源时，会在其经过的路径上释放一种信息素，并能够感知其他蚂蚁释放的信息素。信息素浓度的大小表征路径的远近，信息素浓度越高，表示对应的路径距离越短。通常，蚂蚁会以较大的概率优先选择信息素浓度较高的路径，并释放一定量的信息素，以增强该路径上的信息素浓度，这会形成一个正反馈。最终，蚂蚁能够找到一条从巢穴到食物源的最佳路径，即最短距离。另外，生物学家发现路径上的信息素浓度会随着时间的推进而逐渐衰减。

将蚁群算法应用于解决优化问题的基本思路为，用蚂蚁的行走路径表示待优化问题的可行解，整个蚂蚁群体的所有路径构成待优化问题的解空间。路径较短的蚂蚁释放的信息素量较多，随着时间的推进，较短的路径上累积的信息素浓度逐渐增高，选择该路径的蚂蚁个数也愈来愈多。最终，蚁群会在正反馈的作用下集中到最佳的路径上，此时对应的便是待优化问题的最优解。

特点：
- 正反馈机制，搜索过程不断收敛，最终逼近最优解。
- 每个个体可通过释放信息素来改变周围的环境，且每个个体能够感知周围环境的实时变化，个体间通过环境进行间接地通讯。
- 搜索过程采用分布式计算方式，多个个体同时进行并行计算，大大提高了算法的计算能力和运行效率。
- 启发式的概率搜索方式不容易陷入局部最优，易于找到全局最优解。

### chapter23 基于蚁群算法的二维路径规划算法
**路径规划算法**是指在**有障碍物**的工作环境中寻找一条从起点到终点的、无碰撞地绕过所有障碍物的运动路径的算法。

本案例首先使用Dijkstra算法生成初始次优路径，然后在初始路径的基础上使用蚁群算法生成全局最优路径。

### chapter24 基于蚁群算法的三维路径规划算法
**三维路径规划**指在已知三维地图中，规划出一条从出发点到目标点满足某项指标最优，并且避开了所有三维障碍物的三维最优路径。现有的路径规划算法中，大部分算法是在二维规划平面或准二维规划平面中进行路径规划。一般的三维路径规划算法具有计算过程复杂、信息存储量大、难以直接进行全局规划等问题。

已有的三维路径规划算法主要包括A\*算法、遗传算法、粒子群算法等。
A\*算法的计算量会随着维度的增加而急剧增加，遗传算法和粒子群算法仅是准三维规划算法。

蚁群算法具有分布计算、群体智能等优势，在路径规划上具有很大潜力，在成功用于二维路径规划的同时也可用于三维路径规划。

### chapter25 监督学习神经网络的回归拟合——基于近红外光谱的汽油辛烷值预测
本章分析两种应用最广的监督学习神经网络，**BP神经网络**及**RBF神经网络**的原理及其在回归拟合中的作用。

BP神经网络是一种典型的**多层前向型**神经网络，具有一个输入层、数个隐含层（一层或多层）和一个输出层。层与层之间采用全连接的方式，同一层的神经元之间不存在相互连接。理论证明，具有一个隐含层的三层网络可以逼近任意非线性函数。

隐含层中的神经元多采用S型传递函数，输出层的神经元多采用线性传递函数。

BP神经网络的学习算法是误差反向传播算法，它是典型的监督学习算法，其基本思想是对一定数量的样本对（输入和期望输出）进行学习，即将样本的输入送至网络输入层的各个神经元，经隐含层和输出层计算后，输出层各个神经元输出对应的预测值。若预测值与期望输出之间的误差不满足精度要求时，则从输出层反向传播该误差，从而对权值和阈值进行调整，使得网络的输出和期望间的误差逐渐减小，直至满足精度要求。

多变量插值的径向基函数方法，即RBF神经网络，能以任意精度逼近任意连续函数。

RBF网络的结构与多层前向型网络类似，它是一种三层前向型网络，输入层由信号源结点组成；第二层为隐含层，隐含层神经元数目视所描述问题的需要而定，隐含层神经元的传递函数是对中心点径向对称且衰减的非负非线性函数；第三层为输出层，它对输入模式的作用做出相应。从输入空间到隐含层空间的变换是非线性的，而从隐含层空间到输出层空间的变换是线性的。

RBF网络的基本思想是，用RBF作为隐含层神经元的“基”构成隐含层空间，这样可将输入矢量直接映射到隐含层空间，而不需要通过权连接。当RBF的中心点确定后，这种映射关系随即确定。而隐含层空间到输出空间的映射是线性的，即网络的输出是隐含层神经元输出的线性加权和。此处的权即为网络可调参数。由此可见，从总体上看网络由输入到输出的映射是非线性的，而网络输出对可调参数而言却又是线性的。这样网络的权可由线性方程直接解出，从而大大加快学习速度并避免局部极小问题。

### chapter26 监督学习神经网络的分类——鸢尾花种类识别
监督学习神经网络不仅可解决拟合回归问题，亦可用于模式识别、分类识别。本章继续介绍两种典型的监督学习神经网络GRNN和PNN。

**广义回归神经网络GRNN**是RBF神经网络的一个分支，是一种基于非线性回归理论的前馈式神经网络模型。

GRNN一般由输入层、隐含层和输出层组成。输入层仅将样本变量送入隐含层，并不参与真正的运算。隐含层的神经元个数等于训练集样本数，该层的权值函数为欧氏距离函数，其作用为计算网络输入与第一层的权值之间的距离。隐含层的传递函数为径向基函数，通常采用高斯函数作为网络的传递函数。网络的第三层为线性输出层，其权函数为规范化点积权函数。

GRNN的学习算法与RBF神经网络的学习算法类似，但在输出层部分区别较大。

GRNN与BP神经网络相比，有如下优点：
- 网络的训练是单程训练而不需要迭代。
- 隐含层神经元个数由训练样本自适应确定。
- 网络各层之间的连接权重由训练样本唯一确定，避免了BP神经网络在迭代中的权值修改。
- 隐含层节点的激活函数采用对输入信息具有局部激活特性的高斯函数，使得对接近于局部神经元特征的输入具有很强的吸引力。

**概率神经网络PNN**是一种前馈型神经网络，采用由高斯函数为基函数来形成联合概率密度分布的估计方法和贝叶斯优化规则，构造了一种概率密度分类估计和并行处理的神经网络。PNN既具有一般神经网络所具有的特点，又具有很好的泛化能力及快速学习能力。PNN的结构与GRNN类似，由输入层、隐含层及输出层组成。与GRNN不同的是，PNN的输出层采用竞争输出代替线性输出，各神经元只依据Parzen方法来求和估计各类的概率，从而竞争输入模式的响应机会，最后仅有一个神经元竞争获胜，这样获胜神经元即表示对输入模式的分类。

PNN的学习算法与GRNN的学习算法较为接近，仅在输出层部分有细微差别。

### chapter27 无监督学习神经网络的分类——矿井突水水源判别
无监督学习神经网络在学习过程中无需知道期望的输出。其与真实人脑中的神经网络类似，可以通过不断地观察、分析与比较，自动揭示样本中的内在规律和本质，从而可以对具有近似特征（属性）的样本进行准确地分类和识别。本章介绍竞争神经网络与自组织特征映射（SOFM）神经网络的结构及原理。

**竞争神经网络**是一种典型的、应用非常广泛的无监督学习神经网络，一般由输入层和竞争层组成。与RBF等神经网络类似，输入层仅实现输入模式的传递，并不参与实际的运算。竞争层的各个神经元以相互竞争的形式来赢得对输入模式的响应，最终只有一个神经元赢得胜利，并使与该获胜神经元相关的各连接权值和阈值向着更有利于其竞争的方向发展，而其他神经元对应的权值和阈值保持不变。

**自组织特征映射神经网络**是根据神经元有序的排列可以反映出所感觉到的外界刺激的某些物理特性而提出的。其主要思想是在学习过程中逐步缩小神经元之间的作用邻域，并依据相关的学习规则增强中心神经元的激活程度，从而去掉各神经元之间侧向连接，以达到模拟真实大脑神经系统“近兴奋远抑制”的效果。

与竞争神经网络相比，SOFM神经网络的的性能更好，泛化能力更强。这是因为，竞争神经网络在学习时，每次仅有一个神经元赢得获胜机会，只有获胜神经元对应的权值得到调整。而SOFM神经网络虽然每次亦只有一个神经元赢得获胜机会，但其及其邻近范围内的神经元对应的权值同时进行修正，朝着更有利于其获胜的方向调整。同时，SOFM神经网络逐渐缩小其邻域范围，逐渐排斥邻近的神经元。这种协作与竞争相结合的模式使得其性能更加优越。

### chapter28 支持向量机的分类——基于乳腺组织电阻抗特性的乳腺癌诊断
支持向量机SVM是一种机器学习方法，其基础是统计学习理论。统计学习理论采用结构风险最小化准则，在最小化样本点误差的同时，最小化结构风险，提高了模型的泛化能力，且没有数据维数的限制。在进行线性分类时，将分类面取在离两类样本距离较大的地方；进行非线性分类时通过高维空间变换，将非线性分类变成高维空间的线性分类问题。

### chapter29 支持向量机的回归拟合——混凝土抗压强度预测
*需要下载libsvm，并在“设置路径”中点击“添加并包含子文件夹”按钮选择libsvm所在文件夹。*

与传统的神经网络相比，SVM具有以下几个优点：
- SVM是专门针对小样本问题而提出的，可以在有限样本的情况下获得最优解。
- SVM算法最终将转化为一个二次规划问题，从理论上讲可以得到全局最优解，从而解决了传统神经网络无法避免局部最优的问题，
- SVM的拓扑结构由支持向量决定，避免了传统神经网络需要反复试凑确定网络结构的问题。
- SVM利用非线性变换将原始变量映射到高维特征空间，在高维特征空间中构造线性分类函数，这既保证了模型具有良好的泛化能力，又解决了“维数灾难”问题。

本章介绍SVM回归拟合的基本思想和原理。SVM应用于回归拟合分析时，其基本思想不再是寻找一个最优分类面使得两类样本分开，而是寻找一个最优分类面使得所有训练样本离该最优分类面的误差最小。

几种常用的典型训练算法：

- 分块算法
- Osuna算法
- 序列最小优化算法SMO
- 增量学习算法


### chapter30 极限学习机的回归拟合及分类——对比实验研究
前馈神经网络大多采用梯度下降方法，该方法主要存在以下几个方面的缺点：
- 训练速度慢。由于梯度下降法需要多次迭代以达到修正权值和阈值的目的，因此训练过程耗时较长。
- 容易陷入局部极小点，无法达到全局最小。
- 学习率的选择敏感。

本章介绍针对单隐含层前馈神经网络（SLFN）的新算法——极限学习机，该算法随机产生输入层与隐含层间的连接权值及隐含层神经元的阈值，且在训练过程中无需调整，只需要设置隐含层神经元的个数，便可以获得唯一的最优解。与传统的训练方法相比，该方法具有学习速度快、泛化性能好等优点。