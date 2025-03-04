-- 创建 pgvector 扩展
CREATE EXTENSION IF NOT EXISTS vector;

-- 创建 items 表（向量数据库示例）
CREATE TABLE IF NOT EXISTS items (
                                     id SERIAL PRIMARY KEY,
                                     content TEXT,
                                     embedding vector(1536) -- 嵌入向量维度，根据您的模型调整
    );


-- 创建 user 表（关系型数据库示例）
CREATE TABLE IF NOT EXISTS users (
                                     id SERIAL PRIMARY KEY,
                                     username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

-- 插入 user 表示例数据
INSERT INTO users (username, email, password) VALUES
                                                  ('user1', 'user1@example.com', 'password123'),
                                                  ('user2', 'user2@example.com', 'password456');

