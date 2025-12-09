terraform { 
  cloud { 
    
    organization = "ncp-iac" 

    workspaces { 
      name = "ncp-iac-ws" 
    } 
  } 
}
