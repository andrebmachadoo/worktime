# Worktime
---

## Objective

> Worktime is a plugin for neovim that aims to manually record working hours in projects that use neovim.

## Use

> The basic use of worktime is in command mode where the first parameter can be given as "s" to start, and "p" to pause the job.

```
:Wtime "s" "description of the work started"
:Wtime "p" "paused job description" 
```
## Configuration 

> In the default configuration, the plugin creates the ".worktime" folder in the root of the open project but it can be reconfigured as in the example below:

```lua
-- ~/.config/nvim/init.lua
require('plugin.worktime').setup({
  dirname = ".worktime",
  path = "~/projects/apirest",
})
```

