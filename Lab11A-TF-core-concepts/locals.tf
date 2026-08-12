locals {
    application_prefix = "${var.application_name}-app"
    suffix_length = var.enable_monitoring ? 6 : 4

    application_stamps = [
        {
            environment = "dev"
            region = "eastus"
            min_node_count = 2
            max_node_count = 4
        },
        {
            environment = "test"
            region = "westus"
            min_node_count = 3
            max_node_count = 6
        },
        {
            environment = "prod"
            region = "centralus"
            min_node_count = 5
            max_node_count = 10
        }
    ]

    application_regions = {
    dev = {
        region = "eastus"
        min_node_count = 2
        max_node_count = 4
    }
    
    test = {
        region = "westus"
        min_node_count = 3
        max_node_count = 6
    }

    prod = {
        region = "centralus"
        min_node_count = 5
        max_node_count = 10
    }
    }
}



