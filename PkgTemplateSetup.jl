using PkgTemplates

t = Template(;
            dir=".",
            plugins=[
              Git(ssh=true, jl=true, manifest=false),
              GitHubActions(destination="CI.yml",linux=true,x64=true,coverage=true),
              Documenter{GitHubActions}(),
              License(name="GPL-3.0+")
           ]
       )
generate("ExampleProject", t)
