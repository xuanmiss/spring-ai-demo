# Spring-ai-demo

## 技术栈

本项目使用 Spring Boot + Spring AI + Spring Data JPA + PostgreSQL + pg-vector 实现的 Spring Boot AI应用程序后端服务。

### 向量库选型

向量库根据场景等，可以有多重选择，这里选择PG-Vector主要是可以和一些关系型业务数据逻辑共用一个PG数据库，后续看情况可以拆分等。

### 模型接入

目前引入了 OpenAI，ollama 两种，这个也是目前SpringAI官方支持的，如果需要接入其他模型服务，可以考虑三方的依赖。本地开发使用ollama也比较方便。


## 项目结构

```yaml 
.
├── HELP.md
├── README.md
├── pom.xml
├── script
│   └── pg-vector
│       ├── docker-compose.yaml                            # 数据库部署脚本
│       └── init.sql                                       # 向量库初始化脚本
└── src
    ├── main
    │   ├── java
    │   │   └── com
    │   │       └── miss
    │   │           └── springaidemo
    │   │               ├── SpringAiDemoApplication.java
    │   │               ├── config                         # 配置类
    │   │               ├── controller                     # REST API 控制器
    │   │               ├── model                          # 数据模型
    │   │               ├── repository                     # 数据访问层
    │   │               ├── service                        # 业务逻辑服务
    │   │               │   ├── ai                         # AI 相关服务
    │   │               │   │   ├── agent                  # AI-Agent 相关 
    │   │               │   │   ├── llm                    # LLM 交互
    │   │               │   │   └── rag                    # RAG 相关
    │   │               │   └── workflow                   # 工作流相关服务
    │   │               └── utils                          # 工具类
    │   └── resources
    │       ├── application.yml
    │       ├── static
    │       └── templates
    └── test

```

## 初始化&环境配置

本地需要需要安装 JDK23，Docker，Docker Compose。

拉取后使用喜欢的IDE打开，命令行进入script/pg-vector目录，执行docker-compose up -d 启动数据库服务。

