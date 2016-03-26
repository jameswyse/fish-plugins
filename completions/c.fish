function __fish_git_complete_project_dirs
  gfind $PROJECT_DIR -maxdepth 3 -type d -not -path "*/.*" -not -path "*/node_modules*" -printf "%P\n"
end

complete --no-files --command c --arguments '(__fish_git_complete_project_dirs)'
