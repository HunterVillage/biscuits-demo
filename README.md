> 一个[Biscuits](https://github.com/leyan95/biscuits)的小Demonstrate。

**文档 [Link](https://www.yuque.com/shusheng/suibqb/rxi3sd)** 未及时更新，可以参考本案例。

---

## 案例说明
### 初始化数据库
- 新建数据库 `biscuits_demo`
- 使用 `src` 目录下的 `biscuits-demo.sql` 文件对 `biscuits_demo` 数据库进行初始化。
### 配置
- 修改 `src/main/resources/application.yml` 文件中的数据库用户名、密码
### 启动
- 执行 `src/main/java/org/hv/Application.java`
### 目录结构
```
├── demo/bundles                        //功能点目录
│   ├── authority                       //用户认证功能点目录（包含：注册、登录）
│   └── bundle_order                    //订单功能点目录
│       ├── aggregate                   //聚合
│       ├── controller                  //应用层服务
│       ├── repository                  //仓储
│       └── service                     //工作单元
│   ├── bundle_relevant                 //关联单据功能点目录
│   ├── DemoBundleRegister.java         //功能点注册中心
│   └── DemoPermission.java             //权限注册中心
├── infrastructure                      //基础服务目录，用作功能点之间的数据交互做到最大程度地解耦
│   ├── constant                        //基础服务常量放置目录
│   ├── mediator                        //中介服务目录
│   ├── monitor                         //观察者服务目录
│   └── processnode                     //状态流转服务目录
└── Application.java                    //启动程序
```
### 测试案例
1.通过向`localhost:8089/home/login?avatar=admin&password=123456`发送 post 请求拿到响应的 token。

2.通过向`localhost:8089/order/save`发送 post 请求并携带头信息（注意：值以`Bearer `开头） 'Authorization'：'Bearer eyJhbGciOiJIUzUxMiJ9
.eyJhdmF0YXIiOiJhIiwiZXhwIjoxNTg0NDkzNDIwLCJhdXRoIjoiIiwiY3JlYXRlZCI6MTU4NDQ5MjgyMDc4MX0.s5cepPx4RilRl_BtrsbBtzPMHQFuJuhCNXDg5HZHv3iUPVKMSavtDNsu8dMzolhL0xvcJFfs6Z0Gxe98nkCovg'

3.至此可看到服务端控制台打印出以下信息：
```text
I'm org.hv.demo.bundles.bundle_relevant.service.RelevantBillServiceImpl I can hear you.
Give me 1 biscuit
Relevant Bill Code Is: Hello-001
Catch even of order save，My show time!!!
Order uuid is: 1010123
Order code is: DEMO-1584492838703
Number of rows affected is: 1
```
## 功能点设计思路
### 分层结构
![Framework diagram](hierarchy.png)

#### 展现层
负责向用户展现信息以及解释用户命令。更细的方面来讲就是：

- 请求应用层以获取用户所需要展现的数据；
- 发送命令给应用层要求其执行某个用户命令；
    
#### 应用层
很薄的一层，定义软件要完成的所有任务。对外为展现层提供各种应用功能（包括查询或命令），对内调用领域层（领域对象或领域服务）完成各种业务逻辑，应用层不包含业务逻辑。

#### 领域层
负责表达业务概念，业务状态信息以及业务规则，领域模型处于这一层，是业务软件的**核心**。

#### 基础设施层
本层为其他层提供通用的技术能力；提供了层间的通信；为领域层实现持久化机制；总之，基础设施层可以通过架构和框架来支持其他层的技术需求；

### 功能点分块结构
![Framework diagram](DDD.png)

#### 聚合
通过定义对象之间清晰的所属关系和边界来实现领域模型的内聚，并避免了错综复杂的难以维护的对象关系网的形成。聚合定义了一组具有内聚关系的相关对象的集合，我们把聚合看作是一个修改数据的单元。

#### 仓储
- 仓储被设计出来的目的是基于这个原因：领域模型中的对象自从被创建出来后不会一直留在内存中活动的，当它不活动时会被持久化到数据库中，然后当需 要的时候我们会重建该对象；重建对象就是根据数据库中已存储的对象的状态重新创建对象的过程；所以，可见重建对象是一个和数据库打交道的过程。从更广义的 角度来理解，我们经常会像集合一样从某个类似集合的地方根据某个条件获取一个或一些对象，往集合中添加对象或移除对象。也就是说，我们需要提供一种机制， 可以提供类似集合的接口来帮助我们管理对象。仓储就是基于这样的思想被设计出来的；
- 仓储里面存放的对象一定是聚合，原因是之前提到的领域模型中是以聚合的概念去划分边界的；聚合是我们更新对象的一个边界，事实上我们把整个聚合看 成是一个整体概念，要么一起被取出来，要么一起被删除。我们永远不会单独对某个聚合内的子对象进行单独查询或做更新操作。因此，我们只对聚合设计仓储。
- 尽管仓储可以像集合一样在内存中管理对象，但是仓储一般不负责事务处理。一般事务处理会交给一个叫“工作单元（Unit Of Work）”的东西。关于工作单元的详细信息我在下面的讨论中会讲到。
- 仓储在这里仅仅对自身的聚合进行**简单查询**和存储更新操作，如果涉及到了复杂查询（涉及多个功能点的关联查询）目前给出的解决方案是在基础设施层（Infrastructure）创建对应的查询服务（引被应用层`controller`直接调用故此处需自行开启事务，并使用SQLQuery执行对应的SQL）。
