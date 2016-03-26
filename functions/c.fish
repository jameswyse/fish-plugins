if test -z "$PROJECT_DIR"
  set -gx PROJECT_DIR $HOME/Projects
end

function __fish_git_complete_project_dirs
  gfind $PROJECT_DIR -maxdepth 3 -type d -not -path "*/.*" -not -path "*/node_modules*" -printf "%P\n"
end

function c -d "Change to project directory"
  if test -d "$PROJECT_DIR"
    if test -d "$PROJECT_DIR/$argv"
      cd "$PROJECT_DIR/$argv"
    else
      echo "Project not found."
      return 1
    end
  else
    echo "Project Directory: $PROJECT_DIR does not exist."
    echo "Please set \$PROJECT_DIR"
    return 1
  end
end
