return {
    lsp = {
        omnisharp = {
            enable = true,
            cmd_path = nil,
            default_timeout = 1000,
            enable_editor_config_support = true,
            organize_imports = true,
            load_projects_on_demand = false,
            enable_analyzers_support = true,
            enable_import_completion = true,
            include_prerelease_sdks = true,
            analyze_open_documents_only = false,
            enable_package_auto_restore = true,
            debug = false,
        },
        roslyn = {
            enable = false,
            cmd_path = nil,
        },
        capabilities = nil,
        on_attach = nil,
    },
    logging = {
        level = "INFO",
    },
    dap = {
        adapter_name = nil,
    }
}
