local dap_python = require("dap-python")
local python_path = os.getenv("VIRTUAL_ENV") .. "/bin/python"

dap_python.setup(python_path, { include_configs = true })
