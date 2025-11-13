Orion

A Retrieval-Augmented Generation (RAG) powered AI system designed to process, index, and intelligently query large documents such as textbooks, research papers, and multi-hundred-page PDFs.

Orion transforms static text into an interactive, context-aware conversational interface capable of answering queries grounded directly in your documents. Built using Azure OpenAI, LangChain, Python, and FAISS.

Features

Complete RAG pipeline with document loading, chunking, embedding, and retrieval

Conversational querying with memory support

Capable of processing large PDFs efficiently (800+ pages)

Semantic search using Azure OpenAI embeddings

FAISS-powered vector store for fast similarity search

Modular architecture for easy extension

Local document processing to preserve privacy

Tech Stack

Languages
Python

AI & NLP
Azure OpenAI (GPT-4o, text-embedding-ada-002), LangChain, FAISS

Document Processing
PyPDF, Recursive Character Text Splitter

Architecture
RAG pipeline, conversation memory, vector retrieval

Project Structure
orion/
│── agent.py                # RAG-enabled conversational agent
│── index_docs.py           # Document loader, splitter, and vectorstore builder
│── requirements.txt        # Python dependencies
│── .env                    # Environment variables (excluded from Git)
│── vectorstore/            # Saved FAISS index (excluded from Git)
│── docs/                   # PDFs and source material (excluded from Git)

How It Works
1. Document Ingestion

index_docs.py loads PDFs from the docs/ directory and splits them into overlapping text fragments for better semantic representation.

2. Embedding Generation

Each chunk is embedded using Azure OpenAI embedding models.

3. Vector Store Creation

FAISS stores and indexes embeddings to support fast, scalable similarity search.

4. Conversational Retrieval

agent.py builds a conversational agent that integrates:

Azure GPT-4o Mini for response generation

Retrieval from FAISS

Conversation memory for follow-up queries

5. User Interaction

The agent produces context-grounded responses based entirely on the user’s documents.

Setup Instructions
1. Clone the Repository
git clone https://github.com/YOUR_USERNAME/orion.git
cd orion

2. Create and Activate a Virtual Environment
python -m venv venv
venv\Scripts\activate

3. Install Dependencies
pip install -r requirements.txt

4. Set Up Environment Variables

Create a .env file:

AZURE_OPENAI_API_KEY=your_key
AZURE_OPENAI_ENDPOINT=your_endpoint
AZURE_OPENAI_CHAT_DEPLOYMENT=your_gpt4o_deployment
AZURE_OPENAI_EMBEDDING_DEPLOYMENT=your_embedding_deployment

5. Add Documents

Place any PDFs you want indexed into:

docs/

6. Build the Vector Store
python index_docs.py

7. Run the Conversational Agent
python agent.py

Core Concepts
Retrieval-Augmented Generation (RAG)

Orion uses a retrieval-first architecture to ensure responses are grounded directly in the source material rather than relying purely on generative reasoning.

Chunking Strategy

Documents are split using a recursive chunking process to maximize context quality and retrieval accuracy.

Semantic Similarity Search

FAISS enables high-performance nearest-neighbor search over embeddings, allowing fast and accurate retrieval from large document sets.

Azure OpenAI Integration

Separate deployments are used for:

Embeddings

LLM reasoning

This separation improves performance and reliability.

Future Improvements

Web-based user interface

Support for DOCX, PPTX, and additional formats

Summarization tools and auto-generated notes

Multi-document comparison and cross-reference search

License

This project is licensed under the MIT License.
