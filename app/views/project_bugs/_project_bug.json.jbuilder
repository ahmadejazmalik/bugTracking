json.extract! project_bug, :id, :title, :deadline, :type, :created_at, :updated_at
json.url project_bug_url(project_bug, format: :json)
