
          message.delete();
          let args = message.content.split(" ").slice(1);
          let reason = args.slice(0).join(' ');
          
          if (reason.length < 1) return message.reply('Voc� precisa inserir o texto que o bot ir� dizer.');
           message.channel.sendMessage(message.content.replace(`${prefix}say `,""));
            }
          });
client.on("message", (message) => {
  if (message.author.bot) return; // Ignore bots.
  if (message.channel.type === "dm") return; // Ignore DM channels.
 
if(message.content.startsWith(prefix+"hug")) {
      const fotoPessoa = message.author.avatarURL
      const user = message.mentions.users.first()
      const cor = "3107249"

      var list = ["https://media.giphy.com/media/BXrwTdoho6hkQ/giphy.gif",
      "https://media.giphy.com/media/du8yT5dStTeMg/giphy.gif",
      "https://media.giphy.com/media/13YrHUvPzUUmkM/giphy.gif",
      "https://media.giphy.com/media/qscdhWs5o3yb6/giphy.gif"]

    var rand = list[Math.floor(Math.random() * list.length)];
      
      
    
            message.channel.sendMessage({
              "embed": {
                "description": "<@!"+message.author.id+'> **Deu um abraço em** <@!'+user.id+'>',
                "color": cor,
                "image": {
                  "url": rand
                },
              }}
            )}
          });
          client.on("message", (message) => {
            if (message.author.bot) return; // Ignore bots.
            if (message.channel.type === "dm") return; // Ignore DM channels.
        
          if(message.content.startsWith(prefix+"punch")) {
                const fotoPessoa = message.author.avatarURL
                const user = message.mentions.users.first()
                const cor = "3107249"
          
                var list = ["https://media.giphy.com/media/sxfw7IWQ8y3iE/giphy.gif",
                "https://media.giphy.com/media/LdsJrFnANh6HS/giphy.gif",
                "https://media.giphy.com/media/iWEIxgPiAq58c/giphy.gif",
                "https://media.giphy.com/media/BKRECiW08vdjG/giphy.gif"]
          
              var rand = list[Math.floor(Math.random() * list.length)];
                
                
              
                      message.channel.sendMessage({
                        "embed": {
                          "description": "<@!"+message.author.id+'> **Deu um soco em** <@!'+user.id+'>',
                          "color": cor,
                          "image": {
                            "url": rand
                          },
                        }}
                      )}
                    });
                    client.on("message", (message) => {
                      if (message.author.bot) return; // Ignore bots.
                      if (message.channel.type === "dm") return; // Ignore DM channels.
                    
                    
                    if(message.content.startsWith(prefix+"kill")) {
                          const fotoPessoa = message.author.avatarURL
                          const user = message.mentions.users.first()
                          const cor = "3107249"
                    
                          var list = ["https://media.giphy.com/media/rDOW7YUXV4IOA/giphy.gif",
                          "https://media.giphy.com/media/kHSPEiBbJB2Pm/giphy.gif",
                          "https://media.giphy.com/media/xULW8piEAO7j85U5O0/giphy.gif",
                          "https://media.giphy.com/media/vfM8qA4WefJle/giphy.gif"]
                    
                        var rand = list[Math.floor(Math.random() * list.length)];
                          
                          
                        
                                message.channel.sendMessage({
                                  "embed": {
                                    "description": "<@!"+message.author.id+'> **Matou** <@!'+user.id+'>',
                                    "color": cor,
                                    "image": {
                                      "url": rand
                                    },
                                  }}
                                )}
                              });
client.login('NDE4MjAzNDg5OTQ0OTkzODAy.DXuhAQ.LfYeY7FYKkkkZ9R8M00odbxOCuA');
console.log(`-------------------x-------------------- 
Abrindo discord... Logando...!
Inicializado com sucesso!
-------------------x--------------------`);
const http = require('http');
const express = require('express');
const app = express();
app.get("/", (request, response) => {
  console.log(Date.now() + " Ping Received");
  response.sendStatus(200);
});
app.listen(process.env.PORT);
setInterval(() => {
  http.get(`http://${process.env.PROJECT_DOMAIN}.glitch.me/`);
}, 280000);
 
