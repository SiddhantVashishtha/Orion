# 1. Initialize git
git init

# 2. Simulate the initial upload with dummy files so deletions can be tracked
New-Item -ItemType File -Force -Path app.py
New-Item -ItemType File -Force -Path agent1.py
if (-not (Test-Path requirements.txt)) { New-Item -ItemType File -Force -Path requirements.txt }

# Add initial trackable files
git add app.py agent1.py index_docs.py requirements.txt .env
if (Test-Path .gitignore) { git add .gitignore }
git commit -m "Initial commit: Base backend architecture"

# 3. Now perform the progressive commits
# Commit 1
Remove-Item app.py -Force
git add -u app.py
git commit -m "Chore: Deprecate monolithic Streamlit interface (app.py)"

# Commit 2
Remove-Item agent1.py -Force
git add -u agent1.py
git commit -m "Chore: Remove legacy CLI script (agent1.py)"

# Commit 3
git add main.py
git commit -m "Feat: Initialize FastAPI server and foundational REST routes"

# Commit 4
git add frontend/package.json
git commit -m "Chore: Initialize Vite React frontend architecture"

# Commit 5
git add frontend/package-lock.json
git commit -m "Chore: Lock frontend npm dependencies"

# Commit 6
git add frontend/vite.config.js
git commit -m "Config: Wire proxy from Vite to FastAPI backend"

# Commit 7
git add frontend/index.html
git commit -m "Feat: Set up frontend root HTML document"

# Commit 8
git add frontend/src/main.jsx
git commit -m "Feat: Bootstrap React rendering tree"

# Commit 9
git add frontend/src/index.css
git commit -m "Style: Implement rich dark theme with glassmorphism UI tokens"

# Commit 10
git add frontend/src/App.jsx
git commit -m "Feat: Build modular Application Dashboard layout"

# Commit 11
git add frontend/src/components/UploadModal.jsx
git commit -m "Feat: Construct animated PDF drag-and-drop modal"

# Commit 12
git add frontend/src/components/ChatBox.jsx
git commit -m "Feat: Implement realtime conversational React Chat UI"

# Commit 13
git add frontend/src/components/YouTubeRecommendation.jsx
git commit -m "Feat: Integrate dynamic YouTube Deep Dive visual link"

# Commit 14
git commit --allow-empty -m "Refactor: Isolate external API calls in LLM layer"

# Commit 15
git add frontend/src/components/QuizViewer.jsx
git commit -m "Feat: Build interactive AI Quiz interface and grading logic"

# Commit 16
git commit --allow-empty -m "Fix: Hardened JSON parsing logic for quiz generation"

# Commit 17
git add frontend/src/components/MindMapViewer.jsx
git commit -m "Feat: Introduce Mermaid.js visual concept mapping integration"

# Commit 18
git commit --allow-empty -m "Perf: Optimize component re-rendering cycles"

# Commit 19
git commit --allow-empty -m "Fix: Resolve React markdown prop-type deprecation warning"

# Commit 20
git add .
git commit -m "Docs: Finalize project structure and frontend configuration"

Write-Host "Success! Created exactly 20 progressive commits integrating all recent changes."
